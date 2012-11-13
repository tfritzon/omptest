#include <stdlib.h>

int
work(x)
{
  int i;
  int y= 0;

  for( i= 0; i < 20000; i++ )
    y+= i;

  return y;
}

int
main(int argc, char *argv[]) 
{
  const unsigned int N = atoi(argv[1]);
  int i;
  int * a;
 
  a= calloc(N, sizeof(int));

  for (i = 0; i < N; i++)
    a[i] = work(i);
 
  return 0;
}
