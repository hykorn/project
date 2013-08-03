#include <stdio.h>

// Unix flavours AIX/HPUX/Solaris:-
//   unix
//   __unix__
//   __unix
//
// Windows:-
//   WIN32
//   _MSC_VER
//   CYWIN32
//   MINGW32
//   WINNT
//   WINDOWS
//
// Linux:-
//   linux
//   __linux__
//   __linux
//   __gnu_linux

#if defined(WIN32)
  #define WINOS 1
#elif defined(__unix__)
  #define UNIX 1
#elif defined(__linux__)
  #define LINUX 1
#else 
  #define UNKNOWN 1
#endif
 
int main()
{
#ifdef _WIN32
  printf("You are on windows 32\n");
#elif __unix__   
  printf("You are on UNIX\n");
#elif __linux__
  printf("You are on LINUX\n");
#else
  printf("You are on UNKNOWN\n");
#endif

  #if(defined(WINOS))

  #elif(defined(UNIX))

  #elif(defined(LINUX))

  #else

  #endif
}
