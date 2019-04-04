#include <stdio.h>
#include <getopt.h>
#include <errno.h>
#include <stdlib.h>
#include <pcap.h>
#include <netinet/in.h>
#include <net/ethernet.h>
#include <netinet/ip.h>
#include <netinet/udp.h>
#include <netinet/tcp.h>
#include <malloc.h>
#include <glib.h>
#include <string.h>

void pkt_callback(unsigned char *, const struct pcap_pkthdr *,
		  const unsigned char *);
int dump_remove_all(gpointer, gpointer, gpointer);

void free_key(gpointer);
void free_flowinfo(gpointer);

/* global variables */
pcap_t *p;
unsigned long int pkt_counter;
struct timeval ts_flushed;
char *flowdb = NULL;
int flowtimeout = 20;
GHashTable *active;
unsigned long int f_index = 1;
int f_dumped = 0;
unsigned long int fragdrops = 0;
unsigned long int fragdropsize = 0;
int lsec = 0;

struct f_info_t {
    unsigned long int index;
    unsigned long int bytes_in;
    unsigned long int bytes_out;
    unsigned long int pkts_in;
    unsigned long int pkts_out;
    struct timeval ts_first;
    struct timeval ts_last;
};

int main(int argc, char *argv[])
{
    extern char *optarg;
    extern int errno, optind;
    char *dumpfile = NULL;
    char *t_char;
    int t_int;

    /* process arguments */
    while ((t_int = getopt(argc, argv, "f:t:o:")) != EOF)
	switch (t_int) {
	case 'f':
	    dumpfile = optarg;
	    break;
	case 't':
	    flowtimeout = atoi(optarg);
	    if ((flowtimeout > 900) || (flowtimeout < 1)) {
		fprintf(stderr,
			"Flowtimeout should be between 1 and 900 seconds\n");
		exit(1);
	    }
	    break;
	case 'o':
	    flowdb = optarg;
	    break;
	default:
	    fprintf(stderr,
		    "Usage: %s -f <dumpfile> -o <outfile> [-t <flowtimeout>\n",
		    argv[0]);
	    exit(1);
	}
    argc -= optind;
    argv += optind;

    if ((argc != 0) || (dumpfile == NULL) || (flowdb == NULL)) {
	fprintf(stderr,
		"Usage: %s -f <dumpfile> -o <outfile> [-t <flowtimeout>\n",
		argv[0]);
	exit(1);
    }

    fprintf(stderr,
	    "Reading from %s with flowtimeout %d seconds\n", dumpfile,
	    flowtimeout);

    /* open dumpfile */
    p = pcap_open_offline(dumpfile, t_char);
    if (!p) {
	fprintf(stderr, "Could not open dumpfile %s\n", t_char);
	exit(1);
    }

    /* initialize counters */
    pkt_counter = 0;
    ts_flushed.tv_sec = 0;
    ts_flushed.tv_usec = 0;

    /* create hash containing active flows */
    active =
	g_hash_table_new_full(g_str_hash, g_str_equal, free_key,
			      free_flowinfo);

    /* callback for all packets */
    if (pcap_loop(p, -1, &pkt_callback, NULL) < 0) {
	fprintf(stderr, "Error while processing dumpfile %s: %s\n",
		dumpfile, pcap_geterr(p));
	exit(1);
    }

    fprintf(stderr,
	    "\n\nFinished processing dumpfile %s, processed %ld packets\n",
	    dumpfile, pkt_counter);

    fprintf(stderr, "Dropped %lu fragmented packets, total %lu bytes\n",
	    fragdrops, fragdropsize);

    g_hash_table_foreach_steal(active, dump_remove_all, NULL);


    exit(0);
}

void deltatime(struct timeval *result, struct timeval *high,
	       struct timeval *low)
{
    /* set result intially to zero */
    memset(result, 0, sizeof(struct timeval));

    if (high->tv_sec == low->tv_sec) {
	result->tv_sec = 0;
	result->tv_usec = high->tv_usec - low->tv_usec;
    } else {
	result->tv_sec = high->tv_sec - low->tv_sec;
	if (high->tv_usec >= low->tv_usec) {
	    result->tv_usec = high->tv_usec - low->tv_usec;
	} else {
	    result->tv_sec -= 1;
	    result->tv_usec = high->tv_usec - low->tv_usec + 1000000;
	}
    }

    return;
}

int check_flow_age(gpointer k, gpointer x, gpointer d)
{
    char *key = (char *) k;
    struct f_info_t *v = (struct f_info_t *) x;
    struct timeval *ts_cur = (struct timeval *) d;
    struct timeval res;

    /* check for aging flow */
    deltatime(&res, ts_cur, &v->ts_last);
    if (res.tv_sec >= flowtimeout) {
	void *k_orig;
	char *t_src_ip, *t_dst_ip, *t_proto, *t_src_port, *t_dst_port;


	k_orig = k;
	printf("\nFlow (index %lu)\n", v->index);
	printf("  key: %s\n", (char *) k);

	/* 'decode' key */
	t_src_ip = g_strndup((char *) k, 10);
	k += 10;
	t_dst_ip = g_strndup((char *) k, 10);
	k += 10;
	t_proto = g_strndup((char *) k, 2);
	k += 2;
	t_src_port = g_strndup((char *) k, 5);
	k += 5;
	t_dst_port = g_strndup((char *) k, 5);

	printf("  src ip: %llx\n", atoll(t_src_ip));
	printf("  dst ip: %llx\n", atoll(t_dst_ip));
	printf("  proto: %d\n", atoi(t_proto));
	printf("  src_port: %ld\n", atol(t_src_port));
	printf("  dst_port: %ld\n", atol(t_dst_port));

	printf("  bytes_in: %lu\n", v->bytes_in);
	printf("  bytes_out: %lu\n", v->bytes_out);
	printf("  bytes_total: %lu\n", v->bytes_in + v->bytes_out);
	printf("  pkts_in: %lu\n", v->pkts_in);
	printf("  pkts_out: %lu\n", v->pkts_out);
	printf("  ts_first: %ld %ld\n", v->ts_first.tv_sec,
	       v->ts_first.tv_usec);
	printf("  ts_last: %ld %ld\n", v->ts_last.tv_sec,
	       v->ts_last.tv_usec);
	deltatime(&res, &v->ts_last, &v->ts_first);
	printf("  duration: %ld %ld\n", res.tv_sec, res.tv_usec);

	free(t_src_ip);
	free(t_dst_ip);
	free(t_proto);
	free(t_src_port);
	free(t_dst_port);
	k = k_orig;


//      free(v);
//      free(k);
	f_dumped++;
	return (1);		/* remove this one */
    }

    return (0);			/* don't remove */
}

int dump_remove_all(gpointer k, gpointer x, gpointer d)
{
    struct f_info_t *v = (struct f_info_t *) x;
    struct timeval res;
    void *k_orig;
    char *t_src_ip, *t_dst_ip, *t_proto, *t_src_port, *t_dst_port;

    k_orig = k;
    printf("\nFlow (index %lu)\n", v->index);
    printf("  key: %s\n", (char *) k);

    /* 'decode' key */
    t_src_ip = g_strndup((char *) k, 10);
    k += 10;
    t_dst_ip = g_strndup((char *) k, 10);
    k += 10;
    t_proto = g_strndup((char *) k, 2);
    k += 2;
    t_src_port = g_strndup((char *) k, 5);
    k += 5;
    t_dst_port = g_strndup((char *) k, 5);

    printf("  src ip: %llx\n", atoll(t_src_ip));
    printf("  dst ip: %llx\n", atoll(t_dst_ip));
    printf("  proto: %d\n", atoi(t_proto));
    printf("  src_port: %ld\n", atol(t_src_port));
    printf("  dst_port: %ld\n", atol(t_dst_port));

    printf("  bytes_in: %lu\n", v->bytes_in);
    printf("  bytes_out: %lu\n", v->bytes_out);
    printf("  bytes_total: %lu\n", v->bytes_in + v->bytes_out);
    printf("  pkts_in: %lu\n", v->pkts_in);
    printf("  pkts_out: %lu\n", v->pkts_out);
    printf("  ts_first: %ld %ld\n", v->ts_first.tv_sec,
	   v->ts_first.tv_usec);
    printf("  ts_last: %ld %ld\n", v->ts_last.tv_sec, v->ts_last.tv_usec);
    deltatime(&res, &v->ts_last, &v->ts_first);
    printf("  duration: %ld %ld\n", res.tv_sec, res.tv_usec);

    free(t_src_ip);
    free(t_dst_ip);
    free(t_proto);
    free(t_src_port);
    free(t_dst_port);
    k = k_orig;

//    free(v);
//    free(k);
    return (1);			/* remove this one */
}

void free_key(gpointer d)
{
    char *k = (char *) d;
    free(k);
    return;
}

void free_flowinfo(gpointer d)
{
    struct f_info_t *v = (struct f_info_t *) d;
//    free(v);
    return;
}
void pkt_callback(unsigned char *t_char, const struct pcap_pkthdr *hdr,
		  const unsigned char *pkt)
{
    struct ether_header *ep;
    struct iphdr *ip;
    unsigned long int sport, dport;
    struct udphdr *udp;
    struct tcphdr *tcp;
    struct timeval t_ts;
    char *f_key;
    struct f_info_t *f_info, *t_val;
    int f_rev = 0;

    /* increment packet counter */
    pkt_counter++;

    /* discard non-IP packets */
    ep = (struct ether_header *) pkt;
    if (ntohs(ep->ether_type) != 0x0800)
	return;

    /* skip ethernet header */
    pkt += 14;
    ip = (struct iphdr *) pkt;

    /* discard non-UDP/non-TCP packets */
    if ((ip->protocol != 6) && (ip->protocol != 17))
	return;

    /* discard second, third, etc. fragments */
    if ((ip->frag_off & 0xff00) > 0) {
	fragdrops++;
	fragdropsize += hdr->len;
	return;
    }

    /* if this is the first packet, set time stamps */
    if (ts_flushed.tv_sec == 0) {
	ts_flushed.tv_sec = hdr->ts.tv_sec;
	ts_flushed.tv_usec = hdr->ts.tv_usec;
    }

    /* for every 1000th packet we print a dot and determine if flow dumping is required */
    if ((pkt_counter % 1000) == 0) {
	fprintf(stderr, ".");

	deltatime(&t_ts, (struct timeval *) &hdr->ts, &ts_flushed);
	if (t_ts.tv_sec >= 1) {
	    /* remove old flows */
	    lsec += 1;
	    fprintf(stderr,
		    "\n[%d] (time %lu %lu): ",
		    lsec, hdr->ts.tv_sec, hdr->ts.tv_usec);
	    g_hash_table_foreach_steal(active, check_flow_age,
				       (void *) &hdr->ts);
	    fprintf(stderr, "%d dumped, %d active\n", f_dumped,
		    g_hash_table_size(active));
	    ts_flushed.tv_sec = hdr->ts.tv_sec;
	    ts_flushed.tv_usec = hdr->ts.tv_usec;
	    f_dumped = 0;

	}
    }
    /* skip ip hdr */
    pkt += ip->ihl * 4;

    /* determine transport layer ports */
    switch (ip->protocol) {
    case 6:			/* tcp */
	tcp = (struct tcphdr *) pkt;
	sport = ntohs(tcp->source);
	dport = ntohs(tcp->dest);
	break;
    case 17:			/* udp */
	udp = (struct udphdr *) pkt;
	sport = ntohs(udp->source);
	dport = ntohs(udp->dest);
	break;
    }

    /* construct char with flow key */
    f_key = (char *) malloc(sizeof(char) * 33);
    memset(f_key, 0, sizeof(f_key));
    sprintf(f_key, "%.10lu%.10lu%.2d%.5ld%.5ld%s",
	    (long unsigned int) ntohl(ip->saddr),
	    (long unsigned int) ntohl(ip->daddr), ip->protocol, sport,
	    dport, "\0");

    /* lookup flowkey and reverse flowkey in hash table */
    t_val = g_hash_table_lookup(active, f_key);
    if (!t_val) {
	char *fr_key;
	fr_key = (char *) malloc(sizeof(char) * 33);
	memset(fr_key, 0, sizeof(fr_key));
	sprintf(fr_key, "%.10lu%.10lu%.2d%.5ld%.5ld%s",
		(long unsigned int) ntohl(ip->daddr),
		(long unsigned int) ntohl(ip->saddr), ip->protocol, dport,
		sport, "\0");
	t_val = g_hash_table_lookup(active, fr_key);
	if (t_val) {
	    f_rev = 1;		/* reverse flow */
	    free(f_key);
	    f_key = fr_key;
	} else {
	    free(fr_key);
	}
    }

    if (!t_val) {
	/* flow does not exist in active flow hash table */
	f_info = (struct f_info_t *) malloc(sizeof(struct f_info_t));
	memset(f_info, 0, sizeof(struct f_info_t));

	f_info->index = f_index++;
	f_info->bytes_out = hdr->len;
	f_info->pkts_out = 1;
	f_info->ts_first.tv_sec = f_info->ts_last.tv_sec = hdr->ts.tv_sec;
	f_info->ts_first.tv_usec = f_info->ts_last.tv_usec =
	    hdr->ts.tv_usec;

	g_hash_table_insert(active, f_key, f_info);

    } else {
	/* flow exists in active flow hash table, update values */
	if (f_rev) {
	    t_val->bytes_in += hdr->len;
	    t_val->pkts_in += 1;
	} else {
	    t_val->bytes_out += hdr->len;
	    t_val->pkts_out += 1;
	}
	t_val->ts_last.tv_sec = hdr->ts.tv_sec;
	t_val->ts_last.tv_usec = hdr->ts.tv_usec;

	g_hash_table_replace(active, f_key, t_val);

    }

    return;
}