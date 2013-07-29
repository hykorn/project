// Accept a string from the USER
// then EXTRACT the last character of that STRING
// then DISPLAY is it a VOWEL/CONSONENT
// done using switch/case/default

#include <stdio.h>
#include <string.h>

int main()
{
  char string[80];
  printf("Enter string :");
  scanf("%s", &string);

  int lastCharIndex = strlen(string)-1;

  printf("last char is %c\n", string[lastCharIndex]);

  switch(tolower(string[lastCharIndex]))
  {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      printf("VOWEL\n");
      break;
    default:
      printf("CONSONENT\n");
  }

}
