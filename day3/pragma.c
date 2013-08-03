#include <stdio.h>
//#pragma pack(2)

typedef struct
{
  char str[11];
  char pad[1];
  int a;
}sample;

int main()
{
  printf("size of sample = %d\n", sizeof(sample));
}
 
