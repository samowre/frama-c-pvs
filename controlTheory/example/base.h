/*@ axiomatic matrices {
  @   type matrix;
  @   type vector;
  @   predicate in_ellipsoid(matrix P, vector x);
  @   predicate is_invertible(matrix A);
  @   logic matrix zeros(integer row, integer col);
  @   logic matrix mat_scalar_mult (real a, matrix A);
  @   logic matrix mat_mult(matrix A, matrix B);
  @   logic vector vect_mult(matrix A, vector x);
  @   logic matrix mat_inv(matrix A);
  @   logic matrix eye(integer i);
  @   logic matrix transpose(matrix A);
  @   logic vector Vconcat(vector A, vector B);
  @   logic matrix vert_concat(matrix A, matrix B);
  @   logic matrix horiz_concat(matrix A,matrix B);
  @   logic real mat_select(matrix A, integer i, integer j);
  @   logic real vect_select(vector x,integer i);
  @   logic integer vect_length(vector x);
  @   logic integer mat_row(matrix A);
  @   logic integer mat_col(matrix A);
  @   logic matrix mat_of_array{L}(float *A, integer row, integer col);
  @   axiom mat_of_array_select:
  @     \forall float *A; \forall integer i, j, k, l;
  @     mat_select(mat_of_array(A, k, l), i, j) == A[l*i+j];
  @   axiom mat_of_array_size:
  @     \forall float *A; \forall integer i,j;
  @     mat_row(mat_of_array(A,i,j))==i &&
  @     mat_col(mat_of_array(A,i,j))==j;
  @   
  @   logic vector vect_of_array{L}(float *x, integer length);
  @   axiom vect_of_array_select:
  @     \forall float *x; \forall integer n,i;
  @     vect_select(vect_of_array(x,n),i) == x[i];
  @   axiom vect_of_array_length:
  @     \forall float *x; \forall integer i;
  @     vect_length(vect_of_array(x,i))==i;
  @ logic matrix mat_of_2x2_scalar(real x11, real x12, real x21, real x22);
  @
  @ axiom mat_of_2x2_scalar_select:
  @ \forall matrix A, real x11, x12, x21, x22 ;
  @ A == mat_of_2x2_scalar(x11, x12, x21, x22) ==>
  @
  @ mat_select(A , 1, 1) == x11 &&
  @ mat_select(A , 1, 2) == x12 &&
  @ mat_select(A , 2, 1) == x21 &&
  @ mat_select(A , 2, 2) == x22 ;
  @
  @ axiom mat_of_2x2_scalar_row:
  @ \forall matrix A, real x11, x12, x21, x22 ;
  @ A == mat_of_2x2_scalar(x11, x12, x21, x22) ==>
  @ mat_row(A) == 2 ;
  @
  @ axiom mat_of_2x2_scalar_col:
  @ \forall matrix A, real x11, x12, x21, x22 ;
  @ A == mat_of_2x2_scalar(x11, x12, x21, x22) ==>
  @ mat_col(A) == 2 ;
  @ 
  @ logic matrix mat_of_1x2_scalar(real x11, real x12);
  @
  @ axiom mat_of_1x2_scalar_select:
  @ \forall matrix A, real x11, x12 ;
  @ A == mat_of_1x2_scalar(x11, x12) ==>
  @
  @ mat_select(A , 1, 1) == x11 &&
  @ mat_select(A , 1, 2) == x12 ;
  @
  @ axiom mat_of_1x2_scalar_row:
  @ \forall matrix A, real x11, x12 ;
  @ A == mat_of_1x2_scalar(x11, x12) ==>
  @ mat_row(A) == 1 ;
  @
  @ axiom mat_of_1x2_scalar_col:
  @ \forall matrix A, real x11, x12 ;
  @ A == mat_of_1x2_scalar(x11, x12) ==>
  @ mat_col(A) == 2 ;
  @   
  @ logic matrix mat_of_2x1_scalar(real x11, real x21);
  @
  @ axiom mat_of_2x1_scalar_select:
  @ \forall matrix A, real x11, x21 ;
  @ A == mat_of_2x1_scalar(x11, x21) ==>
  @
  @ mat_select(A , 1, 1) == x11 &&
  @ mat_select(A , 2, 1) == x21 ;
  @
  @ axiom mat_of_2x1_scalar_row:
  @ \forall matrix A, real x11, x21 ;
  @ A == mat_of_2x1_scalar(x11, x21) ==>
  @ mat_row(A) == 2 ;
  @
  @ axiom mat_of_2x1_scalar_col:
  @ \forall matrix A, real x11, x21 ;
  @ A == mat_of_2x1_scalar(x11, x21) ==>
  @ mat_col(A) == 1 ;
  @ 
  @ logic matrix mat_of_1x1_scalar(real x11);
  @ 
  @ logic vector vect_of_1_scalar(real x1);
  @ axiom vect_of_1_scalar_select:
  @ \forall vector x, real x1 ;
  @ x == vect_of_1_scalar(x1) ==>
  @
  @ vect_select(x , 1) == x1 ;
  @ 
  @ axiom vect_of_1_scalar_length:
  @ \forall vector x, real x1 ;
  @ x == vect_of_1_scalar(x1) ==>
  @ vect_length(x) == 1 ;
  @
  @
  @ axiom mat_of_1x1_scalar_select:
  @ \forall matrix A, real x11 ;
  @ A == mat_of_1x1_scalar(x11) ==>
  @
  @ mat_select(A , 1, 1) == x11 ;
  @ axiom mat_of_1x1_scalar_row:
  @ \forall matrix A, real x11 ;
  @ A == mat_of_1x1_scalar(x11) ==>
  @ mat_row(A) == 1 ;
  @
  @ axiom mat_of_1x1_scalar_col:
  @ \forall matrix A, real x11 ;
  @ A == mat_of_1x1_scalar(x11) ==>
  @ mat_col(A) == 1 ;
  @ logic matrix mat_of_4x3_scalar(real x11, real x12, real x13, real x21, real x22, real x23, real x31, real x32, real x33, real x41, real x42, real x43);
  @
  @ axiom mat_of_4x3_scalar_select:
  @ \forall matrix A, real x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43 ;
  @ A == mat_of_4x3_scalar(x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43) ==>
  @
  @ mat_select(A , 1, 1) == x11 &&
  @ mat_select(A , 1, 2) == x12 &&
  @ mat_select(A , 1, 3) == x13 &&
  @ mat_select(A , 2, 1) == x21 &&
  @ mat_select(A , 2, 2) == x22 &&
  @ mat_select(A , 2, 3) == x23 &&
  @ mat_select(A , 3, 1) == x31 &&
  @ mat_select(A , 3, 2) == x32 &&
  @ mat_select(A , 3, 3) == x33 &&
  @ mat_select(A , 4, 1) == x41 &&
  @ mat_select(A , 4, 2) == x42 &&
  @ mat_select(A , 4, 3) == x43 ;
  @
  @ axiom mat_of_4x3_scalar_row:
  @ \forall matrix A, real x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43 ;
  @ A == mat_of_4x3_scalar(x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43) ==>
  @ mat_row(A) == 4 ;
  @
  @ axiom mat_of_4x3_scalar_col:
  @ \forall matrix A, real x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43 ;
  @ A == mat_of_4x3_scalar(x11, x12, x13, x21, x22, x23, x31, x32, x33, x41, x42, x43) ==>
  @ mat_col(A) == 3 ;
  @ logic matrix mat_of_4x4_scalar(real x11, real x12, real x13, real x14, real x21, real x22, real x23, real x24, real x31, real x32, real x33, real x34, real x41, real x42, real x43, real x44);
  @
  @ axiom mat_of_4x4_scalar_select:
  @ \forall matrix A, real x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44 ;
  @ A == mat_of_4x4_scalar(x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44) ==>
  @
  @ mat_select(A , 1, 1) == x11 &&
  @ mat_select(A , 1, 2) == x12 &&
  @ mat_select(A , 1, 3) == x13 &&
  @ mat_select(A , 1, 4) == x14 &&
  @ mat_select(A , 2, 1) == x21 &&
  @ mat_select(A , 2, 2) == x22 &&
  @ mat_select(A , 2, 3) == x23 &&
  @ mat_select(A , 2, 4) == x24 &&
  @ mat_select(A , 3, 1) == x31 &&
  @ mat_select(A , 3, 2) == x32 &&
  @ mat_select(A , 3, 3) == x33 &&
  @ mat_select(A , 3, 4) == x34 &&
  @ mat_select(A , 4, 1) == x41 &&
  @ mat_select(A , 4, 2) == x42 &&
  @ mat_select(A , 4, 3) == x43 &&
  @ mat_select(A , 4, 4) == x44 ;
  @
  @ axiom mat_of_4x4_scalar_row:
  @ \forall matrix A, real x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44 ;
  @ A == mat_of_4x4_scalar(x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44) ==>
  @ mat_row(A) == 4 ;
  @
  @ axiom mat_of_4x4_scalar_col:
  @ \forall matrix A, real x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44 ;
  @ A == mat_of_4x4_scalar(x11, x12, x13, x14, x21, x22, x23, x24, x31, x32, x33, x34, x41, x42, x43, x44) ==>
  @ mat_col(A) == 4 ;
  @}
  @*/

