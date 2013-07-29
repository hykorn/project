// Auto:
// Extern:
//
//

#include <stdio.h>

extern int fun();
int autoStorage();
int externStorage();
int incr();

int b=10;
static int count; // static defaults to zero

int main()
{
  autoStorage();

  externStorage();

  incr();
  incr();
  incr();
  incr();

  fun();

  int i;
  int *newArray = fun();
  for(i=0; i<5; i++)
    printf("main() %d = %d\n", i, newArray[i]);

  return 0;
}

int autoStorage()
{
  auto int a=10;

  printf("hello a=%d\n", a);
  {
    int a=20;
    printf("inside a=%d\n", a);
  }

  printf("a=%d\n", a);
  
  return 0;
}

int externStorage()
{
  printf("hello b=%d\n", b);
  return 0;
}

int incr()
{
  //static int count; // static defaults to zero
  count++;
  printf("count = %d\n", count);

  return 0;
}

  
