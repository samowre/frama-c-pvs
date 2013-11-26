#include "swap3.h"
void swap3(int *a, int n, int i, int j) 
{
   int d;
   d = *(a + j);
   a[j] = *(a + i);
   a[i] = d;
   return;
}
