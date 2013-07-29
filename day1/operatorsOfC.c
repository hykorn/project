#include <stdio.h>

int bitwiseAnd();
int bitwiseMasking();
int bitwiseShift();

int main ()
{
  int a=10, b=20;

  printf("a = %d\n", a);
  printf("b = %d\n", b);

  if (a==5 && b++)
    printf("");

  printf("a = %d\n", a);
  printf("b = %d\n", b);

  bitwiseAnd();

//  bitwiseMasking();
  bitwiseShift();
}

int bitwiseAnd()
{
  int a=10;
  int b=3;
  int res;

  res = a&b;

  printf("%d\n", res);
}

int bitwiseMasking()
{
  int num=10;
  int mask=1;
  int res;

  printf("Enter the number :");
  scanf("%d", &num);

  res = num&mask;

  if (res==mask)
    printf("Odd number\n");
  else
    printf("Even number\n");
}

int bitwiseShift()
{
  int num=11;
  int res;

  res = num << 2; // divide 2
  //res = num << 2; // multiple 2

  printf("after shift = %d\n", num<<2);
  printf("res after shift = %d\n", res);
}

