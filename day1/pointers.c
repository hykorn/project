#include <stdio.h>

int ptrSwap2Nums();
int sizeofAlternative();
int ptrToPtr();

int main()
{
  int num=10;
  int *ptr; // universally ptrs are 4 bytes (char ptrs too)
  
  ptr = &num; // optimized to int *ptr = &num

  printf("num = %d\n", num); 
  printf("num addr = %x\n", &num); 
  printf("ptr = %x\n", ptr);          // addr
  printf("ptr addr = %x\n", &ptr);
  printf("ptr to num = %d\n", *ptr);  // value in addr

  //Using ptrs, swap 2 nums
  //ptrSwap2Nums();
  sizeofAlternative();
  ptrToPtr();
}

int ptrSwap2Nums()
{
  int a = 10;
  int b = 20;
  int *ptrA, *ptrB;

  ptrA = &a;
  ptrB = &b;

  printf("a = %d\n", a); 
  printf("b = %d\n", b);

  int *tmp = ptrA;
  ptrA = &ptrB;
  ptrB = &tmp;
  
  printf("swapped a = %d\n", a); 
  printf("swapped b = %d\n", b); 
}

int sizeofAlternative()
{
  int a=10;
  int *ptr_a=&a;
  int *temp=&a;

  temp++;
  printf("&a = %u\n", a);
  printf("ptr = %u\n", ptr_a);
  printf("Size = %d\n", (int)temp-(int)ptr_a);
}

// Pointer to Pointer:- (double indirection pointers)
int ptrToPtr()
{
  int num=10; 
  int *ptr=&num; 
  int **pptr=&ptr; 

  // num    = 10
  // ptr    = addr of num
  // *ptr   = 10
  // pptr   = addr of ptr
  // *pptr  = addr of num
  // **pptr = 10
}
