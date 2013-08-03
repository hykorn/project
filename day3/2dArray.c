#include <stdio.h>
#include <stdlib.h>

void twoDDynamicArray();

int main()
{
  int rowSize, colSize;

  printf("Enter row size: ");
  scanf("%d", &rowSize); 
  printf("Enter column size: ");
  scanf("%d", &colSize);

  int *ptr = (int *)malloc(colSize*rowSize*sizeof(int));

  //ARR[x][y] = (ARR+i)+j
  int i=0;
  int j=0;
  printf("Enter numbers into array:\n");
  for(i=0; i<rowSize; i++)
    for(j=0; j<colSize; j++)
      scanf("%d", (ptr+i)+j);

  for(i=0; i<colSize; i++) {
    for(j=0; j<rowSize; j++) {
      printf("%d  ", *(ptr+i)+j);
      if(j==(rowSize-1)) printf("\n");
    }
  }

  twoDDynamicArray();

  free(ptr);
}

void twoDDynamicArray()
{
  int **ptr, rows, cols, i, j;

  printf("Enter the row size : ");
  scanf("%d", &rows);
  printf("Enter the col size : ");
  scanf("%d", &cols);

  ptr=(int **)malloc(sizeof(int *)*rows);

  for(i=0; i<rows;i++)
    ptr[i]=(int *)malloc(sizeof(int)*cols);

  for(i=0; i<rows;i++)
    free(ptr[i]);

  free(ptr);

  //$ gcc -g xxxx.c
  //$ valgrind --leak-check=yes ./a.out
}


 
