#include <stdio.h>
int leftJustified();
int getMultiwordString();
int getMultiwordString2();

int main()
{
  char in[] = {"10 20"};
  int out1, out2, sum;
  char out[80];

  sscanf(in, "%d%d", &out1, &out2);

  sprintf(out, "Sum of %d & %d = %d", out1, out2, out1+out2);

  printf("%s\n", out);

  leftJustified();

  getMultiwordString();
  getMultiwordString2();
  
}

int leftJustified()
{
  char one[] = "hello world";
  char two[] = "a world";
  char three[] = "world";

  printf("ONE %s\n", one);
  printf("TWO %s\n", two);

}

int getMultiwordString()
{
  char str[80];
  printf("Enter multiword string: ");

  gets(str);

  printf("%s\n", str);
}

int getMultiwordString2()
{
  char a[80];
  char b[80];

  printf("Enter multi worded string: ");
  scanf("%[^\n]s", a);
  printf("Enter multi worded string: ");
  __fpurge(stdin); /* specific to gcc */
  scanf("%[^\n]s", b);

  puts(a);
  puts(b);
}
