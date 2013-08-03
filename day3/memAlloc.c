#include <stdio.h> 
#include <stdlib.h> 
#include <string.h>

#define MAXSIZE 10

int main()
{
  int *ptr = (int *)malloc(MAXSIZE*sizeof(int));
  memset(ptr, 0, MAXSIZE*sizeof(int));

  if(ptr==NULL) {
    perror("Malloc failed. Exiting"); 
    exit(0);
  }

  int i;

  for(i=0; i<MAXSIZE; i++)
    ptr[i] = i*10;

  for(i=0; i<MAXSIZE; i++)
    printf("ptr[%d] = %d\n", i, *(ptr+i));

  free(ptr);
  
} 
