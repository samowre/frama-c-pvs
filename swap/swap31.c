//@ predicate dom{L}(int k,int n) = k >= 0 && k <= n - 1;
/*@
    requires A: n >= 0 && \valid (a +(0.. n-1));
    requires B: dom( i, n ) && dom( j, n );  
    assigns     a[i], a[j];
    ensures     \old(a[i]) == a[j] && \old(a[j]) == a[i];
    ensures     \forall int i1; dom(i1,n) ==>  
                \exists int i2; dom(i2,n) && (\old(a[i1]) == a[i2]);
 */ 
void swap3(int *a, int n, int i, int j);
