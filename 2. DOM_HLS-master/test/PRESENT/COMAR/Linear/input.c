#include<stdbool.h>
void sbox(bool x0_0, bool x1_0, bool x2_0, bool x3_0, bool x0_1, bool x1_1, bool x2_1, bool x3_1, bool r0, bool r1, bool r0_1, bool r1_1, bool r2_1, bool r3_1, bool *Y0_0, bool *Y1_0, bool *Y2_0, bool *Y3_0, bool *Y0_1, bool *Y1_1, bool *Y2_1, bool *Y3_1)
{
  bool x0_0_inp;
  bool x1_0_inp;
  bool x2_0_inp;
  bool x3_0_inp;
  bool x0_1_inp;
  bool x1_1_inp;
  bool x2_1_inp;
  bool x3_1_inp;
  bool r0_inp;
  bool r1_inp;
  bool r0_1_inp;
  bool r1_1_inp;
  bool r2_1_inp;
  bool r3_1_inp;
  x0_0_inp = x0_0;
  x1_0_inp = x1_0;
  x2_0_inp = x2_0;
  x3_0_inp = x3_0;
  x0_1_inp = x0_1;
  x1_1_inp = x1_1;
  x2_1_inp = x2_1;
  x3_1_inp = x3_1;
  r0_inp = r0;
  r1_inp = r1;
  r0_1_inp = r0_1;
  r1_1_inp = r1_1;
  r2_1_inp = r2_1;
  r3_1_inp = r3_1;
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
  bool Y0_01;
  bool Y1_01;
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
  bool i1_comar0;
  bool i2_comar0;
  bool p4_comar0;
  bool p2_comar0;
  bool p3_comar0;
  bool p1_comar0;
  bool i1xori2_comar0;
  bool i0xori3_comar0;
  bool m0_comar0;
  bool m1_comar0;
  bool m2_comar0;
  bool m3_comar0;
  bool i0_comar0;
  bool i3_comar0;
  bool y1_1_comar0;
  bool y1_2_comar0;
  bool y1_3_comar0;
  bool y1_4_comar0;
  m0_comar0 = Q0_0 ^ r0_inp;
  m1_comar0 = Q1_1 ^ r1_inp;
  m2_comar0 = Q1_0 ^ r1_inp;
  m3_comar0 = Q0_1 ^ r0_inp;
  p2_comar0 = reg(m0_comar0) & reg(m1_comar0);
  p3_comar0 = reg(m3_comar0) & reg(m2_comar0);
  p1_comar0 = reg(m0_comar0) & reg(m2_comar0);
  p4_comar0 = reg(m3_comar0) & reg(m1_comar0);
  i0_comar0 = p1_comar0 ^ r0_1_inp;
  i1_comar0 = p2_comar0 ^ r1_1_inp;
  i2_comar0 = p3_comar0 ^ r2_1_inp;
  i3_comar0 = p4_comar0 ^ r3_1_inp;
  i1xori2_comar0 = reg(i1_comar0) ^ reg(i2_comar0);
  i0xori3_comar0 = reg(i0_comar0) ^ reg(i3_comar0);
  T0_0 = reg(i1xori2_comar0 ^ i0xori3_comar0);
  y1_1_comar0 = r0_inp ^ r0_inp;
  y1_2_comar0 = y1_1_comar0 ^ r0_1_inp;
  y1_3_comar0 = y1_2_comar0 ^ r1_1_inp;
  y1_4_comar0 = y1_3_comar0 ^ r2_1_inp;
  T0_1 = y1_4_comar0 ^ r3_1_inp;
  L10_0 = !L2_0;
  L10_1 = !L2_1;
  bool i1_comar1;
  bool i2_comar1;
  bool p4_comar1;
  bool p2_comar1;
  bool p3_comar1;
  bool p1_comar1;
  bool i1xori2_comar1;
  bool i0xori3_comar1;
  bool m0_comar1;
  bool m1_comar1;
  bool m2_comar1;
  bool m3_comar1;
  bool i0_comar1;
  bool i3_comar1;
  bool y1_1_comar1;
  bool y1_2_comar1;
  bool y1_3_comar1;
  bool y1_4_comar1;
  m0_comar1 = x1_0_inp ^ r0_inp;
  m1_comar1 = Q4_1 ^ r1_inp;
  m2_comar1 = Q4_0 ^ r1_inp;
  m3_comar1 = x1_1_inp ^ r0_inp;
  p2_comar1 = reg(m0_comar1) & reg(m1_comar1);
  p3_comar1 = reg(m3_comar1) & reg(m2_comar1);
  p1_comar1 = reg(m0_comar1) & reg(m2_comar1);
  p4_comar1 = reg(m3_comar1) & reg(m1_comar1);
  i0_comar1 = p1_comar1 ^ r0_1_inp;
  i1_comar1 = p2_comar1 ^ r1_1_inp;
  i2_comar1 = p3_comar1 ^ r2_1_inp;
  i3_comar1 = p4_comar1 ^ r3_1_inp;
  i1xori2_comar1 = reg(i1_comar1) ^ reg(i2_comar1);
  i0xori3_comar1 = reg(i0_comar1) ^ reg(i3_comar1);
  T2_0 = reg(i1xori2_comar1 ^ i0xori3_comar1);
  y1_1_comar1 = r0_inp ^ r0_inp;
  y1_2_comar1 = y1_1_comar1 ^ r0_1_inp;
  y1_3_comar1 = y1_2_comar1 ^ r1_1_inp;
  y1_4_comar1 = y1_3_comar1 ^ r2_1_inp;
  T2_1 = y1_4_comar1 ^ r3_1_inp;
  Q2_0 = T0_0 ^ L2_0;
  L4_0 = T0_0 ^ T2_0;
  Q7_0 = T0_0 ^ L5_0;
  Q6_0 = L4_0 ^ L3_0;
  Q2_1 = T0_1 ^ L2_1;
  L4_1 = T0_1 ^ T2_1;
  Q7_1 = T0_1 ^ L5_1;
  Q6_1 = L4_1 ^ L3_1;
  bool i1_comar2;
  bool i2_comar2;
  bool p4_comar2;
  bool p2_comar2;
  bool p3_comar2;
  bool p1_comar2;
  bool i1xori2_comar2;
  bool i0xori3_comar2;
  bool m0_comar2;
  bool m1_comar2;
  bool m2_comar2;
  bool m3_comar2;
  bool i0_comar2;
  bool i3_comar2;
  bool y1_1_comar2;
  bool y1_2_comar2;
  bool y1_3_comar2;
  bool y1_4_comar2;
  m0_comar2 = Q2_0 ^ r0_inp;
  m1_comar2 = Q3_1 ^ r1_inp;
  m2_comar2 = Q3_0 ^ r1_inp;
  m3_comar2 = Q2_1 ^ r0_inp;
  p2_comar2 = reg(m0_comar2) & reg(m1_comar2);
  p3_comar2 = reg(m3_comar2) & reg(m2_comar2);
  p1_comar2 = reg(m0_comar2) & reg(m2_comar2);
  p4_comar2 = reg(m3_comar2) & reg(m1_comar2);
  i0_comar2 = p1_comar2 ^ r0_1_inp;
  i1_comar2 = p2_comar2 ^ r1_1_inp;
  i2_comar2 = p3_comar2 ^ r2_1_inp;
  i3_comar2 = p4_comar2 ^ r3_1_inp;
  i1xori2_comar2 = reg(i1_comar2) ^ reg(i2_comar2);
  i0xori3_comar2 = reg(i0_comar2) ^ reg(i3_comar2);
  T1_0 = reg(i1xori2_comar2 ^ i0xori3_comar2);
  y1_1_comar2 = r0_inp ^ r0_inp;
  y1_2_comar2 = y1_1_comar2 ^ r0_1_inp;
  y1_3_comar2 = y1_2_comar2 ^ r1_1_inp;
  y1_4_comar2 = y1_3_comar2 ^ r2_1_inp;
  T1_1 = y1_4_comar2 ^ r3_1_inp;
  bool i1_comar3;
  bool i2_comar3;
  bool p4_comar3;
  bool p2_comar3;
  bool p3_comar3;
  bool p1_comar3;
  bool i1xori2_comar3;
  bool i0xori3_comar3;
  bool m0_comar3;
  bool m1_comar3;
  bool m2_comar3;
  bool m3_comar3;
  bool i0_comar3;
  bool i3_comar3;
  bool y1_1_comar3;
  bool y1_2_comar3;
  bool y1_3_comar3;
  bool y1_4_comar3;
  m0_comar3 = Q6_0 ^ r0_inp;
  m1_comar3 = Q7_1 ^ r1_inp;
  m2_comar3 = Q7_0 ^ r1_inp;
  m3_comar3 = Q6_1 ^ r0_inp;
  p2_comar3 = reg(m0_comar3) & reg(m1_comar3);
  p3_comar3 = reg(m3_comar3) & reg(m2_comar3);
  p1_comar3 = reg(m0_comar3) & reg(m2_comar3);
  p4_comar3 = reg(m3_comar3) & reg(m1_comar3);
  i0_comar3 = p1_comar3 ^ r0_1_inp;
  i1_comar3 = p2_comar3 ^ r1_1_inp;
  i2_comar3 = p3_comar3 ^ r2_1_inp;
  i3_comar3 = p4_comar3 ^ r3_1_inp;
  i1xori2_comar3 = reg(i1_comar3) ^ reg(i2_comar3);
  i0xori3_comar3 = reg(i0_comar3) ^ reg(i3_comar3);
  T3_0 = reg(i1xori2_comar3 ^ i0xori3_comar3);
  y1_1_comar3 = r0_inp ^ r0_inp;
  y1_2_comar3 = y1_1_comar3 ^ r0_1_inp;
  y1_3_comar3 = y1_2_comar3 ^ r1_1_inp;
  y1_4_comar3 = y1_3_comar3 ^ r2_1_inp;
  T3_1 = y1_4_comar3 ^ r3_1_inp;
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


