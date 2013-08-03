/* Program accept SIZE of Dynamic Array
 * Accept INPUT from Keyboard
 * Delete elements from the END - INPUT from the user - how many to delete
 * Append elements to the END - INPUT from the user - how many & which all
 * 
 * After every delete or append display the contents of the array
 * should be fool-proof
*/

#include <stdio.h> 
#include <stdlib.h> 
#include <string.h>

void delElementsFromEnd(int *array, int numElementsToDel, int *sizeOfArray)
{
  int i;

  for(i=0; i<numElementsToDel; i++)
    array[(*sizeOfArray)-1-i] = 0;

  array = realloc(array, (*sizeOfArray)-numElementsToDel);

  *sizeOfArray -= numElementsToDel;

}

void appendElementsFromEnd(int *array, 
                           int numElementsToAppend,
                           int *sizeOfArray)
{
  int i;

  int *newNums = (int *)malloc(numElementsToAppend*sizeof(int));
  memset(newNums, 0, numElementsToAppend*sizeof(int));
  if(newNums==NULL) {
    perror("Malloc failed. Exiting"); 
    exit(0);
  }

  printf("Enter numbers into array:\n");
  for(i=0; i<numElementsToAppend; i++)
    scanf("%d", newNums+i);

  array = realloc(array, (*sizeOfArray)+numElementsToAppend);

  for(i=0; i<numElementsToAppend; i++) {
    array[(*sizeOfArray)+i] = *(newNums+i);
  }

  *sizeOfArray += numElementsToAppend;

  free(newNums);
  newNums=NULL;
}

int main()
{
  int size;
  printf("Enter size of array: ");
  scanf("%d", &size);

  int *ptr = (int *)malloc(size*sizeof(int));
  memset(ptr, 0, size*sizeof(int));

  if(ptr==NULL) {
    perror("Malloc failed. Exiting"); 
    exit(0);
  }

  int i;
  printf("Enter numbers into array:\n");
  for(i=0; i<size; i++)
    scanf("%d", ptr+i);
   
  for(i=0; i<size; i++)
    printf("ptr[%d] = %d\n", i, *(ptr+i));

  //Delete elements from END
  delElementsFromEnd(ptr, 2, &size);
  for(i=0; i<size; i++)
    printf("ptr[%d] = %d\n", i, *(ptr+i));

  //Append elements from END
  int numElementsToAppend;
  printf("Enter number of elements to append: ");
  scanf("%d", &numElementsToAppend);

  appendElementsFromEnd(ptr, 
                        numElementsToAppend,
                        &size);

  for(i=0; i<size; i++)
    printf("ptr[%d] = %d\n", i, *(ptr+i));

  free(ptr);
  ptr=NULL;
}
