/*
 * swap3.h
 */
#ifndef SWAP3_H
#define SWAP3_H
/*@ 
    predicate swapped{L1,L2}(int* a, integer i, integer j) = 
      \at(a[i],L1) == \at(a[j],L2) && 
      \at(a[j],L1) == \at(a[i],L2) && 
      \forall integer k; k != i && k != j  
	  ==> \at(a[k],L1) == \at(a[k],L2); 
  */
 
//@ predicate dom{L}(integer k,integer n) = k >= 0 && k <= n - 1;

/*@
    requires A: n >= 0 && \valid (a +(0.. n-1));
    requires B: dom{Here}( i, n ) && dom{Here}( j, n );
    requires \valid(a+i) && \valid(a+j);  
    assigns     a[i], a[j];
    ensures     \forall integer i1; dom(i1,n) ==>  
                \exists integer i2; dom(i2,n) && (\old(a[i1]) == a[i2]);
    ensures swapped{Old,Here}(a,i,j);
    ensures \forall integer k; 
		0 <= k < n && k != i && k != j ==> a[k] == \old(a[k]);
 */
extern void swap3(int *a, int n, int i, int j);
#endif
