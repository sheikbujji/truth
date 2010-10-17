/* permutation generation */

#include <stdio.h>

#define N 5

int val[N], id;

writeperm() {
  int i;

  for(i=0; i<N; i++) printf("%d ",val[i]);
  printf("\n");
}


main() {
  int i;
  for(i=0; i<N; i++) val[i] = 0;
  id = -1;
  visit(0);
}

visit(k)
int k;
{
  int t;

  id++;
  val[k] = id;
  if (id == N-1) writeperm();
  for(t=0; t<N; t++)
    if( val[t] == 0) visit(t);
  id--;
  val[k] = 0;
}
