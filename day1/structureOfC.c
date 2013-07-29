#include <stdio.h>

int main (int argc, char *argv[], char *env[])
{
  printf("argc = %d\n", argc);

  printf("First arg = %s\n", argv[1]);

  printf("Last arg = %s\n", argv[argc-1]);

  printf("First Env Var = %s\n", env[0]);
  printf("Second Env Var = %s\n", env[1]);
}
