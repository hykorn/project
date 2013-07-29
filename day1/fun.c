#include <stdio.h>

static int array[] = {1,2,3,4,5};

int *fun()
{
  //static int array[] = {1,2,3,4,5};
  int i;

//  for(i=0; i<5; i++)
//    printf("fun() %d = %d\n", i, array[i]);
  return array;
}
