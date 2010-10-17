/* quick sort */

#include <stdio.h>
#include <stdlib.h>

#define N 10000

int a[N];

main() {
  initran();
  qsort2(0,N);
  show(N);
}

initran() {
  int i;
  for(i=0; i<N; i++)
    a[i] = rnum();
}

qsort2(l,r)
int l,r;
{
  int v,t,i,j;

  if ( r>l ) {
    v = a[r];
    i = l-1;
    j = r;
    do {
      do i++; while (a[i] < v);
      do j--; while (a[j] > v);
      t = a[i];
      a[i] = a[j];
      a[j] = t;
    } while( j > i);
    a[j] = a[i];
    a[i] = a[r];
    a[r] = t;
    qsort2(l,i-1);
    qsort2(i+1,r);
  }
}

show(n)
int n;
{
  int i;
  for(i=0; i<n; i++) printf("%d ",a[i]);
  printf("\n");
}

rnum() {
  return( random()%N );
}
