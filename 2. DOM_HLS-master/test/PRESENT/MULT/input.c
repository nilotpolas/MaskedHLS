#include<stdbool.h>
void sbox(bool x0_0, bool x1_0, bool x2_0, bool x3_0, bool x0_1, bool x1_1, bool x2_1, bool x3_1, bool r, bool *Y0_0, bool *Y1_0, bool *Y2_0, bool *Y3_0, bool *Y0_1, bool *Y1_1, bool *Y2_1, bool *Y3_1)
{
  bool x0_0_inp;
  bool x1_0_inp;
  bool x2_0_inp;
  bool x3_0_inp;
  bool x0_1_inp;
  bool x1_1_inp;
  bool x2_1_inp;
  bool x3_1_inp;
  bool r_inp;
  x0_0_inp = x0_0;
  x1_0_inp = x1_0;
  x2_0_inp = x2_0;
  x3_0_inp = x3_0;
  x0_1_inp = x0_1;
  x1_1_inp = x1_1;
  x2_1_inp = x2_1;
  x3_1_inp = x3_1;
  r_inp = r;
  bool L0_0;
  bool L1_0;
  bool L2_0;
  bool L3_0;
  bool L4_0;
  bool L5_0;
  bool L6_0;
  bool L7_0;
  bool L8_0;
  bool L9_0;
  bool L10_0;
  bool L11_0;
  bool Q0_0;
  bool Q1_0;
  bool Q2_0;
  bool Q3_0;
  bool Q4_0;
  bool Q5_0;
  bool Q6_0;
  bool Q7_0;
  bool T0_0;
  bool T1_0;
  bool T2_0;
  bool T3_0;
  bool L0_1;
  bool L1_1;
  bool L2_1;
  bool L3_1;
  bool L4_1;
  bool L5_1;
  bool L6_1;
  bool L7_1;
  bool L8_1;
  bool L9_1;
  bool L10_1;
  bool L11_1;
  bool Q0_1;
  bool Q1_1;
  bool Q2_1;
  bool Q3_1;
  bool Q4_1;
  bool Q5_1;
  bool Q6_1;
  bool Q7_1;
  bool T0_1;
  bool T1_1;
  bool T2_1;
  bool T3_1;
  bool Y0_01;
  bool Y1_01;
  bool Y0_11;
  bool Y1_11;
  L0_0 = x1_0_inp ^ x2_0_inp;
  L1_0 = x0_0_inp ^ x1_0_inp;
  L8_0 = x2_0_inp ^ x0_0_inp;
  L5_0 = x0_0_inp ^ x3_0_inp;
  L0_1 = x1_1_inp ^ x2_1_inp;
  L1_1 = x0_1_inp ^ x1_1_inp;
  L8_1 = x2_1_inp ^ x0_1_inp;
  L5_1 = x0_1_inp ^ x3_1_inp;
  Q0_0 = !L0_0;
  Q1_0 = !L1_0;
  Q3_0 = !x3_0_inp;
  Q4_0 = !x2_0_inp;
  Q0_1 = !L0_1;
  Q1_1 = !L1_1;
  Q3_1 = !x3_1_inp;
  Q4_1 = !x2_1_inp;
  L2_0 = Q1_0 ^ x2_0_inp;
  L3_0 = Q0_0 ^ x3_0_inp;
  L2_1 = Q1_1 ^ x2_1_inp;
  L3_1 = Q0_1 ^ x3_1_inp;
  bool p2_mult0;
  bool p3_mult0;
  bool p1_mult0;
  bool p4_mult0;
  p2_mult0 = Q0_0 & Q1_1;
  p3_mult0 = Q0_1 & Q1_0;
  p1_mult0 = Q0_0 & Q1_0;
  p4_mult0 = Q0_1 & Q1_1;
  T0_0 = reg(p2_mult0) ^ reg(p1_mult0);
  T0_1 = reg(p3_mult0) ^ reg(p4_mult0);
  L10_0 = !L2_0;
  L10_1 = !L2_1;
  bool p2_mult1;
  bool p3_mult1;
  bool p1_mult1;
  bool p4_mult1;
  p2_mult1 = x1_0_inp & Q4_1;
  p3_mult1 = x1_1_inp & Q4_0;
  p1_mult1 = x1_0_inp & Q4_0;
  p4_mult1 = x1_1_inp & Q4_1;
  T2_0 = reg(p2_mult1) ^ reg(p1_mult1);
  T2_1 = reg(p3_mult1) ^ reg(p4_mult1);
  Q2_0 = T0_0 ^ L2_0;
  L4_0 = T0_0 ^ T2_0;
  Q7_0 = T0_0 ^ L5_0;
  Q6_0 = L4_0 ^ L3_0;
  Q2_1 = T0_1 ^ L2_1;
  L4_1 = T0_1 ^ T2_1;
  Q7_1 = T0_1 ^ L5_1;
  Q6_1 = L4_1 ^ L3_1;
  bool p2_mult2;
  bool p3_mult2;
  bool p1_mult2;
  bool p4_mult2;
  p2_mult2 = Q2_0 & Q3_1;
  p3_mult2 = Q2_1 & Q3_0;
  p1_mult2 = Q2_0 & Q3_0;
  p4_mult2 = Q2_1 & Q3_1;
  T1_0 = reg(p2_mult2) ^ reg(p1_mult2);
  T1_1 = reg(p3_mult2) ^ reg(p4_mult2);
  bool p2_mult3;
  bool p3_mult3;
  bool p1_mult3;
  bool p4_mult3;
  p2_mult3 = Q6_0 & Q7_1;
  p3_mult3 = Q6_1 & Q7_0;
  p1_mult3 = Q6_0 & Q7_0;
  p4_mult3 = Q6_1 & Q7_1;
  T3_0 = reg(p2_mult3) ^ reg(p1_mult3);
  T3_1 = reg(p3_mult3) ^ reg(p4_mult3);
  L7_0 = T0_0 ^ T1_0;
  L11_0 = T1_0 ^ L10_0;
  L7_1 = T0_1 ^ T1_1;
  L11_1 = T1_1 ^ L10_1;
  Y0_01 = L7_0 ^ T2_0;
  Y1_01 = L8_0 ^ T3_0;
  Y0_11 = L7_1 ^ T2_1;
  Y1_11 = L8_1 ^ T3_1;
  *Y0_0 = reg(x3_0_inp ^ Y0_01);
  *Y1_0 = reg(L7_0 ^ Y1_01);
  *Y2_0 = reg(L11_0 ^ T2_0);
  *Y3_0 = reg(T2_0 ^ L5_0);
  *Y0_1 = reg(x3_1_inp ^ Y0_11);
  *Y1_1 = reg(L7_1 ^ Y1_11);
  *Y2_1 = reg(L11_1 ^ T2_1);
  *Y3_1 = reg(T2_1 ^ L5_1);
}


