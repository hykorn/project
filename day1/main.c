#include <stdio.h>
extern void fun();
extern int a;

int main()
{
  printf("a at main() = %d\n", a);

  fun();
  a++;
  fun();

  return 0;
}
