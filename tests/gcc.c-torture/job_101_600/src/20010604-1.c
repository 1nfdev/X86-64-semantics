#include "mini_string.h"
#include "mini_stdlib.h"
#include <stdbool.h>

int f (int a, int b, int c, _Bool d, _Bool e, _Bool f, char g)
{
  if (g != 1 || d != true || e != true || f != true) abort ();
  return a + b + c;
}

int main (void)
{
  if (f (1, 2, -3, true, true, true, '\001'))
    abort ();
  exit (0);
}
