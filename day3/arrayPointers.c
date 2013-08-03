#include <stdio.h> 

int main()
{
  int arr[] = {10,20,30,40,50};
  int i = 0;

  // arr[i] ==> (arr+i)
  // i[arr] ==> (i+arr)
  printf("arr[0] = %d\n", arr[i]); 
  printf("arr[0] = %d\n", i[arr]);

  int *ptr = arr;
  printf("ptr[0] = %d\n", ptr[i]); 
  printf("ptr[2] = %d\n", *(ptr+2));

  ptr+=2;
  printf("+=2 ptr[2] = %d\n", ptr[i+2]); 

  
} 
