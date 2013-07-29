// without using inbuilt fns find the length of the string

#include <stdio.h>
#include <string.h>
int convertIntToBinary();

int main()
{
  convertIntToBinary();
}

int convertIntToBinary()
{
  int num=255;
  int i=0;
  int mask=1;
  int out[32];
  memset(out,0,sizeof(out));
  do
  {
    out[i]=num&mask;
    num=num>>1;
    i++;
  } while(i<31);

 for(i=31;i>=0;i--)
  printf("%d",out[i]);

 printf("\n");

}
