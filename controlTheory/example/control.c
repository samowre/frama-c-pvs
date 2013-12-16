#pragma SeparationPolicy(none)
#pragma JessieIntegerModel(math)
#pragma JessieFloatModel(math)
#include "base.h"
/*@ logic matrix Ac = mat_of_2x2_scalar(2,3,3,5);
  @ logic matrix P = mat_of_2x2_scalar(4,2,5,3);
  @ logic matrix Q = mat_mult(mat_inv(transpose(Ac)),mat_mult(P,mat_inv(Ac))); */

/*@ requires (\valid(xc + (0..1)));
  @ requires (\valid(yc + (0..1)));
  @ requires in_ellipsoid(P,vect_of_array(xc,2));
  @ ensures in_ellipsoid(Q,vect_of_array(yc,2));*/
void inst2(float* xc, float* yc)
{	
  yc[0]= 2*xc[0] + 3*xc[1];
  yc[1]= 3*xc[0] + 5*xc[1];
}
