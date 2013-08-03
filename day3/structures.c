#include <stdio.h> 
#include <string.h> 

int main()
{
  typedef struct fileinfo
  {
    int type1:2;  // use only 2 bits (allocated 4)
    int type2:2;  // use only 2 bits (allocated 4)
    int type3:4;  // use all 4 bits
    char name[10];
  }FINFO;

  typedef struct fileinfo2
  {
    int type;
    char name[10];
    char test[2];
  }FINFO2;

  printf("size of FINFO = %d\n", sizeof(FINFO)); 
  printf("size of FINFO2 = %d\n", sizeof(FINFO2)); 

  FINFO r1;
  r1.type1 = 3;
  r1.type2 = 3;
  r1.type3 = 10;

  printf("r1.type1 = %d\n", r1.type1); 
  printf("r1.type2 = %d\n", r1.type2); 
  printf("r1.type3 = %d\n", r1.type3); 
}
