/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 * not memory safe
 */
#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);
extern char __VERIFIER_nondet_char(void);

/* Returns some null-terminated string. */
char* build_nondet_String(void) {
    int length = __VERIFIER_nondet_int();
    if (length < 1) {
        length = 1;
    }
    char* nondetString = (char*) malloc(length * sizeof(char));
		
		for(int i = 0; i < length - 1; i++) 
		{
		  nondetString[i] = __VERIFIER_nondet_char();
		}

    nondetString[length-1] = '\0';
    return nondetString;
}





char *(cstrpbrk)(const char *s1, const char *s2)
 {
     const char *sc1;
     const char *s;
     int c;
     for (sc1 = s1; *sc1 != '\0'; sc1++) {
         s = s2;
         c = *sc1;
         while (*s != '\0' && *s != (char)c)
             s++;
         if (*s != c)
             return (char *)sc1;
     }
     return 0;                /* terminating nulls match */
 }

int main() {
  char* s1 = build_nondet_String();
  char* s2 = build_nondet_String();
  int res = *cstrpbrk(s1,s2);
  free(s1);
  free(s2);
  return res;
}


