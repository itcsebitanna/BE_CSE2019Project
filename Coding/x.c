//gcc -Wall x.c -lm
#include<stdio.h>
#include<math.h>
#include<string.h>
int main()
{
char c[100]; //g[100] l[100], m[100], n[100];
int i=0,x=1,j=0;
double r,s,a,b,d,k,e;
FILE *p, *q;
p=fopen("/home/bharathi/project/k.xlsx","r");
q=fopen("/home/bharathi/project/j.xlsx","w");
if(p==NULL)
	printf("File does not exists\n");
else
	fprintf(q,"Node \t Sample \t Predictor Co-efficient \t Present Threshold \t Future Threshold\n");
//for(k=0;k<2;++k)
//{
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \t \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
//a=0;
//fprintf(q, "\n \t \t \t \t \t %f", a);
//fprintf(q, "\n \t \t \t \t \t %f", a);
++j;x=1;
//}
//fscanf(q, "\t \t \t \t \t %s", g);
//g=l;
//fscanf(q, "\t \t \t \t \t %s", g);
//g=m;
//fscanf(q, "\t \t \t \t \t %s", g);
//g=n;
//f=(l+m+n)/3;
//fprintf(q, "\t \t \t \t \t %f\n", f);
for(i=0;i<2;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
j=1;
for(i=0;i<2;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 0 \t 0 "))
{
a=1, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;

fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j++; x=1;
}
j=2; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=2; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 1 "))
{
a=1, b=1, d=1;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
//++j;x=1;
//}
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
j=7;x=1;
//for(i=0;i<2;++i)
//{
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 0 \t 0 "))
{
a=1, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
//j++; x=1;
//}
j=7; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=7; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 1 "))
{
a=1, b=1, d=1;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j++; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j;x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j;x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j;x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j;x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
//++j;x=1;
j++; x=1;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 0 \t 0 "))
{
a=1, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));

j=13; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=13; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 1 "))
{
a=1, b=1, d=1;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j++; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j; x=1;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 0 \t 0 "))
{
a=1, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));

j=16; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=16; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
++j; x=1;
for(i=0;i<3;++i)
{
do {
fgets(c,0,p);
if(strcmp(c,"0\t 0 \t 0 "))
{
a=0, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
++x;
}
j++; x=1;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 0 \t 0 "))
{
a=1, b=0, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=19; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 0 "))
{
a=1, b=1, d=0;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
j=19; ++x;
do {
fgets(c,0,p);
if(strcmp(c,"1 \t 1 \t 1 "))
{
a=1, b=1, d=1;
e=a+b+d;
r=(a*a+b*b+d*d)/3;
s=sqrt(r);
k=s*e;
fprintf(q, "%d \t %d \t %f \t %f \t %f \n", j, x, s, e, k);
}
}while(!strcmp(c,"-1"));
fclose(p);
fclose(q);
return 0;
}

