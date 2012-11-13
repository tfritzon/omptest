#include <stdlib.h>

float
work(x)
{
  int i;
  float y= 0;

  for( i= 0; i < 20000; i++ )
    y+= i*0.001;

  return y;
}

int
main(int argc, char *argv[]) 
{
  const unsigned int N = atoi(argv[1]);
  int i;
  float *a;

  a= calloc(N, sizeof(float));

  #pragma omp parallel for
  for (i = 0; i < N; i++)
    a[i] = work(i);
 
  return 0;
}
