/* bubble.c */

#include <stdio.h>
#include <stdlib.h>

#define MAX 20000

int a[MAX];

main() {
  initran();
  bubble();
  show(10);
}

initran() {
  int i;

  for(i=0; i<MAX; i++)
    a[i] = rnum();
}

bubble() {
  int i,j,t;

  for(i=MAX-1; i>=0; i--)
    for(j=1; j<MAX; j++ )
      if ( a[j-1] > a[j] ) {
	t = a[j-1];
	a[j-1] = a[j];
	a[j] = t;
      }
}

show(n)
int n;
{
  int i;

  for(i=0; i<n; i++ ) printf("%d ",a[i]);
  printf("\n");
}

rnum() {
  return( random()%MAX );
}
