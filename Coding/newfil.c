#include<stdio.h>
int main()
{
FILE *fp,*fp1;
	char c[100]; int i=0;
	fp = fopen("/home/bharathi/project/k.tr","r");
fp1=fopen("/home/bharathi/project/k.xlsx","w");
if(fp==NULL)
	printf("File does not exists\n");
else
	fprintf(fp1," Time \t Node \t Sender/Receiver \t Action Performed \t LOOP \t COLLISION \t TTL\n");
do {
	fgets(c, 0, fp);

//Extracting the necessary details for node 0

//Here three samples are considered for the calculation of predictor co-efficient

//First sample for node 0

if(strcmp(c,"s"))
{ 
//fscanf(fp1, "%s", c);
//fprintf(fp1, "%s", c);
//fgets(c, 0, fp);
if(strcmp(c,"_0_ AGT ---"))
{	fgets(c, 0, fp);
if(strcmp(c,"0 tcp"))
	fprintf(fp1,"10.000000000 \t 0 \t Application layer Sender \t Route Request \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.000000000 \t 0 \t Application layer Sender \t Route Request \t 1 \t 0 \t 0");
}
}

/*if(strcmp(c,"r"))
{
if(strcmp(c,"_0_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 tcp"))
	fprintf(fp1,"\n10.000000000 \t 0 \t Sender \t Ack received \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\t 0 \t Sender \t packet dropped \t 1 \t 0 \t 0");
}
}*/

//Second sample for node 0

if(strcmp(c,"s"))
{
if(strcmp(c,"_0_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.000115000  \t 0 \t MAC layer Sender \t Bit/Frame Foward \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.000115000 \t 0 \t MAC layer Sender \t packet dropped \t 1 \t 0 \t 0");
}
}

//Third Sample for node 0

if(strcmp(c,"r"))
{
if(strcmp(c,"_0_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 ACK"))
	fprintf(fp1,"\n 10.042959818  \t 0 \t MAC layer Receiver \t Ack Received \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.042959818 \t 0 \t MAC layer Receiver \t packet dropped \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 1

//First sample for node 1

if(strcmp(c,"r"))
{
if(strcmp(c,"_1_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014464443  \t 1 \t MAC layer Receiver \t Packets received as Bit/Frames  \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014464443 \t 1 \t MAC layer Receiver \t packet dropped \t 1 \t 0 \t 0");
}
}

// Second sample for node 1

if(strcmp(c,"s"))
{
if(strcmp(c,"_1_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014489443  \t 1 \t Network layer Receiver \t Bits/frames Received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014489443 \t 1 \t Network layer Receiver \t packet dropped \t 1 \t 0 \t 0");
}
}

//Third sample for node 1

if(strcmp(c,"D"))
{
if(strcmp(c,"_1_ MAC"))
{
fgets(c,0,fp);
if(strcmp(c,"COL 0 AODV"))
	fprintf(fp1,"\n 10.014555088 \t 1 \t MAC layer Receiver \t Queue length exceed packet dropped \t 1 \t 0 \t 0");
else 
	fprintf(fp1,"\n 10.014555088 \t 1 \t MAC layer Receiver \t Packet forwarded \t 0 \t 0 \t 0");
}
}

//Extracting the necessary details for node 2

//First sample for node 2

if(strcmp(c,"D"))
{
if(strcmp(c,"_2_ MAC"))
{
fgets(c,0,fp);
if(strcmp(c,"COL 0 AODV"))
	fprintf(fp1,"\n 10.014554881 \t 2 \t MAC layer Sender \t Packet dropped \t 1 \t 0 \t 0");
else 
	fprintf(fp1,"\n 10.014554881 \t 2 \t MAC layer Sender \t Packet forwarded \t 0 \t 0 \t 0");
}
}

//Second sample for node 2

if(strcmp(c,"D"))
{
if(strcmp(c,"_2_ MAC"))
{
fgets(c,0,fp);
if(strcmp(c,"COL 0 AODV"))
	fprintf(fp1,"\n 10.015402881 \t 2 \t MAC layer Sender \t Packet dropped \t 1 \t 1 \t 0");
else 
	fprintf(fp1,"\n 10.015402881 \t 2 \t MAC layer Sender \t Packet forwarded \t 0 \t 0 \t 0");
}
}

//Third sample for node 2

if(strcmp(c,"D"))
{
if(strcmp(c,"_2_ RTR"))
{
fgets(c,0,fp);
if(strcmp(c,"LOOP 2923 tcp"))
	fprintf(fp1,"\n 117.054233996 \t 2 \t Network layer Sender \t Packet dropped \t 1 \t 1 \t 1");
else 
	fprintf(fp1,"\n 117.054233996 \t 2 \t Network layer Sender \t Packet forwarded \t 0 \t 0 \t 0");
}
}

//Extracting the necessary details for node 3

//First sample for node 3

if(strcmp(c,"r"))
{
if(strcmp(c,"_3_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431652  \t 3 \t MAC layer Receiver \t Packets received as Bits/Frames  \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431652 \t 3 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 3

if(strcmp(c,"s"))
{
if(strcmp(c,"_3_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.008398041  \t 3 \t Network layer Sender \t Bits/Frames forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.008398041 \t 3 \t Netwrok layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Third sample for node 3

if(strcmp(c,"r"))
{
if(strcmp(c,"_3_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009032987  \t 3 \t Network layer Receiver \t Bits/frames received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009032987 \t 3 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 4

//First sample for node 4

if(strcmp(c,"r"))
{
if(strcmp(c,"_4_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431504  \t 4 \t MAC layer Receiver \t Packets received as bits/frames \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431504 \t 4 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 4

if(strcmp(c,"s"))
{
if(strcmp(c,"_4_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.008594586  \t 4 \t Network layer Sender \t Bits/frames are forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.008594586 \t 4 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Third sample for node 4

if(strcmp(c,"r"))
{
if(strcmp(c,"_4_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.008594586  \t 4 \t MAC layer Receiver \t packets are received as bits/frames \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.008594586 \t 4 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 5

//First sample for node 5

if(strcmp(c,"r"))
{
if(strcmp(c,"_5_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014464486  \t 5 \t MAC layer Receiver \t packets are received as bits/frames \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014464486 \t 5 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 5

if(strcmp(c,"r"))
{
if(strcmp(c,"_5_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014489486  \t 5 \t Network layer Receiver \t bits/frames received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014489486 \t 5 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 5

if(strcmp(c,"r"))
{
if(strcmp(c,"_5_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.016725546  \t 5 \t MAC layer Receiver \t Packets received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.016725546 \t 5 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 6

//First sample for node 6

if(strcmp(c,"r"))
{
if(strcmp(c,"_6_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431430  \t 6 \t MAC layer Receiver \t Packets received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431430 \t 6 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 6

if(strcmp(c,"r"))
{
if(strcmp(c,"_6_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007456430  \t 6 \t Network layer Receiver \t Frames/bits received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007456430 \t 6 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 6

if(strcmp(c,"s"))
{
if(strcmp(c,"_6_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.008159375  \t 6 \t MAC layer Sender \t Packets are forwarded as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.008159375 \t 6 \t MAC layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}
//Extracting the necessary details for node 7

//First sample for node 7

if(strcmp(c,"D"))
{
if(strcmp(c,"_7_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 RTS"))
	fprintf(fp1,"\n 10.106346849  \t 7 \t MAC layer Sender \t Route Packets dropped \t 1 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.106346849 \t 7 \t MAC layer Sender \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 7

if(strcmp(c,"D"))
{
if(strcmp(c,"_7_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 RTS"))
	fprintf(fp1,"\n 10.618445525  \t 7 \t Network layer Receiver \t Route Packets dropped \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.618445525 \t 7 \t Network layer Receiver \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Third sample for node 7

if(strcmp(c,"D"))
{
if(strcmp(c,"_7_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 RTS"))
	fprintf(fp1,"\n 10.694534747  \t 7 \t MAC layer Sender \t Route packets dropped \t 1 \t 1 \t 1");
else
	fprintf(fp1,"\n 10.694534747 \t 7 \t MAC layer Sender \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 8

//First sample for node 8

if(strcmp(c,"r"))
{
if(strcmp(c,"_8_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.012287224  \t 8 \t MAC layer Receiver \t Route packets dropped \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.012287224 \t 8 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 8

if(strcmp(c,"r"))
{
if(strcmp(c,"_8_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.012312224  \t 8 \t Network layer Receiver \t Frames/bits received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.012312224 \t 8 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 8

if(strcmp(c,"r"))
{
if(strcmp(c,"_8_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.012312224  \t 8 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.012312224 \t 8 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 9

//First sample for node 9

if(strcmp(c,"r"))
{
if(strcmp(c,"_9_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.012287150  \t 9 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.012287150 \t 9 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 9

if(strcmp(c,"r"))
{
if(strcmp(c,"_9_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.012312150  \t 9 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.012312150 \t 9 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 9

if(strcmp(c,"r"))
{
if(strcmp(c,"_9_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.016725404  \t 9 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.016725404 \t 9 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 10

//First sample for node 10

if(strcmp(c,"r"))
{
if(strcmp(c,"_10_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.003113293  \t 10 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.003113293 \t 10 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 10

if(strcmp(c,"r"))
{
if(strcmp(c,"_10_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007456013  \t 10 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007456013 \t 10 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 10

if(strcmp(c,"s"))
{
if(strcmp(c,"_10_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.011303054  \t 10 \t Network layer Sender \t Frames/bits are forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.011303054 \t 10 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 11

//First sample for node 11

if(strcmp(c,"r"))
{
if(strcmp(c,"_11_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431253  \t 11 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431253 \t 11 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 11

if(strcmp(c,"r"))
{
if(strcmp(c,"_11_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007456253  \t 11 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007456253 \t 11 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 11

if(strcmp(c,"r"))
{
if(strcmp(c,"_11_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014489083  \t 11 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014489083 \t 11 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 12

//First sample for node 12

if(strcmp(c,"r"))
{
if(strcmp(c,"_12_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431517  \t 12 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431517 \t 12 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 12

if(strcmp(c,"r"))
{
if(strcmp(c,"_12_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009007800  \t 12 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009007800 \t 12 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 12

if(strcmp(c,"r"))
{
if(strcmp(c,"_12_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009950850  \t 12 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009950850 \t 12 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 13

//First sample for node 13

if(strcmp(c,"D"))
{
if(strcmp(c,"_13_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014554861  \t 13 \t MAC layer Sender \t Route Packets dropped \t 1 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014554861 \t 13 \t MAC layer Sender \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 13

if(strcmp(c,"D"))
{
if(strcmp(c,"_13_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.015402861  \t 13 \t MAC layer Sender \t Route packets dropped \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.015402861 \t 13 \t MAC layer Sender \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 13

if(strcmp(c,"s"))
{
if(strcmp(c,"_13_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.011303054  \t 13 \t Network layer Sender \t Frames/bits are forwarded as packets \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.011303054 \t 13 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 14

//First sample for node 14

if(strcmp(c,"r"))
{
if(strcmp(c,"_14_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431268  \t 14 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431268 \t 14 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 14

if(strcmp(c,"r"))
{
if(strcmp(c,"_14_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007456268  \t 14 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007456268 \t 14 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 14

if(strcmp(c,"s"))
{
if(strcmp(c,"_14_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009097722  \t 14 \t Network layer Sender \t Frames/bits are forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009097722 \t 14 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 15

//First sample for node 15

if(strcmp(c,"r"))
{
if(strcmp(c,"_15_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431554  \t 15 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431554 \t 15 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 15

if(strcmp(c,"s"))
{
if(strcmp(c,"_15_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009204606  \t 15 \t Network layer Sender \t Frames/bits are forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009204606 \t 15 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Third sample for node 15

if(strcmp(c,"s"))
{
if(strcmp(c,"_15_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.010155652  \t 15 \t MAC layer Sender \t Packets are forwarded as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.010155652 \t 15 \t MAC layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 16

//First sample for node 16

if(strcmp(c,"D"))
{
if(strcmp(c,"_16_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014554902  \t 16 \t MAC layer Receiver \t Route Packets dropped \t 1 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014554902 \t 16 \t MAC layer Receiver \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Second sample for node 16

if(strcmp(c,"D"))
{
if(strcmp(c,"_16_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.015402902  \t 16 \t Network layer Receiver \t Route Packets dropped \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.015402902 \t 16 \t Network layer Receiver \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Third sample for node 16

if(strcmp(c,"r"))
{

if(strcmp(c,"_16_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.027752572  \t 16 \t Network layer Receiver \t Frames/bits are received as packets \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.027752572 \t 16 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 17

//First sample for node 17

if(strcmp(c,"r"))
{
if(strcmp(c,"_17_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007431534  \t 17 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007431534 \t 17 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 17

if(strcmp(c,"r"))
{
if(strcmp(c,"_17_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.007456534  \t 17 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.007456534 \t 17 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 17

if(strcmp(c,"s"))
{
if(strcmp(c,"_17_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.011693101  \t 17 \t Network layer Sender \t Frames/bits are forwarded as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.011693101 \t 17 \t Network layer Sender \t packet not forwarded \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 18

//First sample for node 18

if(strcmp(c,"r"))
{
if(strcmp(c,"_18_ RTR ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009032652  \t 18 \t Network layer Receiver \t Frames/bits are received as packets \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009032652 \t 18 \t Network layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Second sample for node 18

if(strcmp(c,"r"))
{
if(strcmp(c,"_18_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.009925713  \t 18 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.009925713 \t 18 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Third sample for node 18

if(strcmp(c,"r"))
{
if(strcmp(c,"_18_ MAC ---"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.013485692  \t 18 \t MAC layer Receiver \t Packets are received as frames/bits \t 0 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.013485692 \t 18 \t MAC layer Receiver \t packet not received \t 1 \t 0 \t 0");
}
}

//Extracting the necessary details for node 19

//First sample for node 19

if(strcmp(c,"D"))
{
if(strcmp(c,"_19_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.014554639  \t 19 \t MAC layer Receiver \t Route packets dropped \t 1 \t 0 \t 0");
else
	fprintf(fp1,"\n 10.014554639 \t 19 \t MAC layer Receiver \t packet received \t 0 \t 0 \t 0");
}
}

//Second sample for node 19

if(strcmp(c,"D"))
{
if(strcmp(c,"_19_ MAC COL")) 
{
fgets(c,0,fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1,"\n 10.013510749  \t 19 \t MAC layer Receiver \t Frames/bits/route packets dropped \t 1 \t 1 \t 0");
else
	fprintf(fp1,"\n 10.013510749 \t 19 \t MAC layer Receiver \t packet received \t 0 \t 0 \t 0");
}
}

//Third sample for node 19

if(strcmp(c,"D"))
{
if(strcmp(c,"_19_ MAC COL"))
{
fgets(c,0,fp);
if(strcmp(c,"0 RTS"))
	fprintf(fp1,"\n 10.618094444  \t 19 \t MAC layer Sender \t Frames/bits/route packets dropped \t 1 \t 1 \t 1");
else
	fprintf(fp1,"\n 10.618094444 \t 19 \t MAC layer Sender \t packet forwarded \t 0 \t 0 \t 0");
}
}
/*if(strcmp(c,"r"))
{ 
fgets(c, 0, fp);
if(strcmp(c,"_5_ RTR"))
{	fgets(c, 0, fp);
if(strcmp(c,"0 AODV"))
	fprintf(fp1," \t 5 \t Intermediate \t Packet Forward \t 0 \t 0 \t 0 \n"); 
}
}*/
}while(!strcmp(c,"-1"));
fcloseall();
return 0;
}
