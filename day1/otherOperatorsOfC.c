#include <stdio.h>

int findMaxof3UsingTernary();

int main ()
{
  int a;
  char b;
  float c;
  int d[5];

  (sizeof(a)==sizeof(c))? printf("EQ\n"):printf("Not EQ\n");

  
  findMaxof3UsingTernary();

}

int findMaxof3UsingTernary()
{
  int firstNum, secondNum, thirdNum;

  printf("Scan first number");
  scanf("%d", &firstNum);
  printf("Scan second number");
  scanf("%d", &secondNum);
  printf("Scan third number");
  scanf("%d", &thirdNum);

  int max = (firstNum>secondNum) ? 
    ((firstNum>thirdNum)?firstNum:((secondNum>thirdNum)?secondNum:thirdNum)):((secondNum>thirdNum)?secondNum:thirdNum);

//(a>b)?(a>c)?a:((b>c)?b:

  printf("max = %d\n", max);
}
