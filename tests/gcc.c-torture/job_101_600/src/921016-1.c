#include "mini_string.h"
#include "mini_stdlib.h"
main()
{
int j=1081;
struct
{
signed int m:11;
}l;
if((l.m=j)==j)abort();
exit(0);
}
