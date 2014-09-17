#pragma SeparationPolicy(none)
#pragma JessieIntegerModel(math)
#pragma JessieFloatModel(math)
/*@ 
  @ type vector=RPCons(real, real);
  @
  @ axiomatic Vector_pair{
  @ logic real pr1(vector p);
  @ logic real pr2(vector p);
  @ axiom pr1_def: \forall real x, y; pr1(RPCons(x,y)) == x;
  @ axiom pr2_def: \forall real x, y; pr2(RPCons(x,y)) == y;
  @ }
  @
  @ axiomatic Norm{
  @ logic real norm(vector p);  
  @ }
  @
  @ logic vector diff(vector u, vector v) =
  @  \let u1 = pr1(u);
  @  \let u2 = pr2(u);
  @  \let v1 = pr1(v);
  @  \let v2 = pr2(v);
  @  \let pr1 = u1 - v1;
  @  \let pr2 = u2 - v2;
  @  RPCons(pr1, pr2);
  @ 
  @ predicate difference_nonneg(double* a,double* b, integer start_i, integer end_i) =
  @    		\forall integer i; start_i <= i && i < end_i ==> a[i] - b[i] >=0;
  @
  @ logic real euclidean_norm(double* p,double* q)=
  @ 		\sqrt((p[0]-q[0])*(p[0]-q[0]) + (p[1]-q[1])*(p[1]-q[1]));
  @
  @ lemma norm_add: \forall vector a,b,c,d; norm(diff(a,b)) <= 
  @                   norm(diff(c,d))+norm(diff(a,c))+norm(diff(b,d));
  @
  @ lemma Ine: \forall real er, real err, vector sim,Sim,st,St;
  @              (norm(diff(sim,Sim)) <= err) && (norm(diff(st,St)) <= er) ==>
  @                norm(diff(sim,st))<=norm(diff(Sim,St))+err+er && 
  @                   norm(diff(sim,st))>=norm(diff(Sim,St))-(err+er);
  @
  @ lemma euclidian_is_norm: \forall double* p,double* q; difference_nonneg(p,q,0,2) ==>
  @                            euclidean_norm(p,q) == norm(diff(RPCons(p[0], p[1]),RPCons(q[0], q[1])));
  @
  @*/
/*@ requires 0 <= x;
  @ ensures \result ==\sqrt(x);
  @*/
  double sqrt( double x){
    return sqrt(x);
  }
  /*@ requires (\valid(x + (0..1)));
    @ requires (\valid(y + (0..1)));
    @ requires difference_nonneg(x, y, 0, 2);
    @ ensures \forall real err,er, double* Sim, double* St; 
    @        difference_nonneg(Sim, St, 0, 2) &&
    @        difference_nonneg(x, Sim, 0, 2) &&
    @        difference_nonneg(y, St, 0, 2) &&
    @        euclidean_norm(x,Sim)<=err && euclidean_norm(y,St)<=er ==>
    @         \result <= euclidean_norm(Sim,St) + err+er && 
    @         \result >= euclidean_norm(Sim,St) - (err+er);
    @ ensures \result == norm(diff(RPCons(x[0], x[1]),RPCons(y[0], y[1])));
    @*/
double CalculateDistance(double x[2],double y[2])
       { double p=0.0; 
         p =sqrt((x[0]-y[0])*(x[0]-y[0]) + (x[1]-y[1])*(x[1]-y[1])); 
         return p;
       };

