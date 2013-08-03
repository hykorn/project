#include <stdio.h> 
#include <string.h> 

void swap(char *x, char *y)
{
  char tmp[10];

  strcpy(tmp, x);
  strcpy(x,y);
  strcpy(y,tmp);
  
}

int main()
{
  int i,j;
  char names[][10]={"paul", "apple"};

  for(i=0; i<10; i++)
    gets(names[i]);

  for(i=0; i<10; i++) {
    for(j=i+1; j<10-i; j++) {
      if(strcmp(names[i], names[j])>0) {
        swap(names[i], names[j]);
      }
    }
  }

  for(i=0; i<10; i++)
    puts(names[i]);
}
