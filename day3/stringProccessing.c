#include <stdio.h> 
#include <string.h> 

int main()
{
  char str[] = {"one two three four five six"};
  int i=0;
  int count=1;
  int ncount=2;

  printf("%s\n",str);
  //Convert to upper for every alternate word
  for(i=0; i<strlen(str);i++) {
    if(isspace(str[i]) && (ncount%2)) {
      toupper(str[i]);
      ncount++;
    }
    printf("%c\n",str[i]);
    count++;
  }

  printf("%s\n",str);
}
