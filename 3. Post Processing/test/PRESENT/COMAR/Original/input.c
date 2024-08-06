void sbox(_Bool x0_0, _Bool x1_0, _Bool x2_0, _Bool x3_0, _Bool x0_1, _Bool x1_1, _Bool x2_1, _Bool x3_1, _Bool r0, _Bool r1, _Bool r0_1, _Bool r1_1, _Bool r2_1, _Bool r3_1, _Bool *Y0_0, _Bool *Y1_0, _Bool *Y2_0, _Bool *Y3_0, _Bool *Y0_1, _Bool *Y1_1, _Bool *Y2_1, _Bool *Y3_1)
{
  _Bool x0_0_inp;
  _Bool x1_0_inp;
  _Bool x2_0_inp;
  _Bool x3_0_inp;
  _Bool x0_1_inp;
  _Bool x1_1_inp;
  _Bool x2_1_inp;
  _Bool x3_1_inp;
  _Bool r0_inp;
  _Bool r1_inp;
  _Bool r0_1_inp;
  _Bool r1_1_inp;
  _Bool r2_1_inp;
  _Bool r3_1_inp;
  x0_0_inp = x0_0;
  x1_0_inp = x1_0;
  x2_0_inp = x2_0;
  x3_0_inp = reg(reg(reg(x3_0)));
  x0_1_inp = x0_1;
  x1_1_inp = x1_1;
  x2_1_inp = x2_1;
  x3_1_inp = reg(reg(reg(x3_1)));
  r0_inp = r0;
  r1_inp = r1;
  r0_1_inp = reg(r0_1);
  r1_1_inp = reg(r1_1);
  r2_1_inp = reg(r2_1);
  r3_1_inp = reg(r3_1);
  _Bool L0_0;
  _Bool L1_0;
  _Bool L2_0;
  _Bool L3_0;
  _Bool L4_0;
  _Bool L5_0;
  _Bool L6_0;
  _Bool L7_0;
  _Bool L8_0;
  _Bool L9_0;
  _Bool L10_0;
  _Bool L11_0;
  _Bool Q0_0;
  _Bool Q1_0;
  _Bool Q2_0;
  _Bool Q3_0;
  _Bool Q4_0;
  _Bool Q5_0;
  _Bool Q6_0;
  _Bool Q7_0;
  _Bool T0_0;
  _Bool T1_0;
  _Bool T2_0;
  _Bool T3_0;
  _Bool Y0_01;
  _Bool Y1_01;
  _Bool L0_1;
  _Bool L1_1;
  _Bool L2_1;
  _Bool L3_1;
  _Bool L4_1;
  _Bool L5_1;
  _Bool L6_1;
  _Bool L7_1;
  _Bool L8_1;
  _Bool L9_1;
  _Bool L10_1;
  _Bool L11_1;
  _Bool Q0_1;
  _Bool Q1_1;
  _Bool Q2_1;
  _Bool Q3_1;
  _Bool Q4_1;
  _Bool Q5_1;
  _Bool Q6_1;
  _Bool Q7_1;
  _Bool T0_1;
  _Bool T1_1;
  _Bool T2_1;
  _Bool T3_1;
  _Bool Y0_11;
  _Bool Y1_11;
  L0_0 = x1_0_inp ^ x2_0_inp;
  L1_0 = x0_0_inp ^ x1_0_inp;
  L8_0 = reg(reg(reg(reg(reg(reg(x2_0_inp)))))) ^ reg(reg(reg(reg(reg(reg(x0_0_inp))))));
  L5_0 = reg(reg(reg(x0_0_inp))) ^ x3_0_inp;
  L0_1 = x1_1_inp ^ x2_1_inp;
  L1_1 = x0_1_inp ^ x1_1_inp;
  L8_1 = reg(reg(reg(reg(reg(reg(x2_1_inp)))))) ^ reg(reg(reg(reg(reg(reg(x0_1_inp))))));
  L5_1 = reg(reg(reg(x0_1_inp))) ^ x3_1_inp;
  Q0_0 = !L0_0;
  Q1_0 = !L1_0;
  Q3_0 = !x3_0_inp;
  Q4_0 = !x2_0_inp;
  Q0_1 = !L0_1;
  Q1_1 = !L1_1;
  Q3_1 = !x3_1_inp;
  Q4_1 = !x2_1_inp;
  L2_0 = reg(reg(reg(Q1_0))) ^ reg(reg(reg(x2_0_inp)));
  L3_0 = reg(reg(reg(Q0_0))) ^ x3_0_inp;
  L2_1 = reg(reg(reg(Q1_1))) ^ reg(reg(reg(x2_1_inp)));
  L3_1 = reg(reg(reg(Q0_1))) ^ x3_1_inp;
  _Bool i1_comar0;
  _Bool i2_comar0;
  _Bool p4_comar0;
  _Bool p2_comar0;
  _Bool p3_comar0;
  _Bool p1_comar0;
  _Bool i1xori2_comar0;
  _Bool i0xori3_comar0;
  _Bool m0_comar0;
  _Bool m1_comar0;
  _Bool m2_comar0;
  _Bool m3_comar0;
  _Bool i0_comar0;
  _Bool i3_comar0;
  _Bool y1_1_comar0;
  _Bool y1_2_comar0;
  _Bool y1_3_comar0;
  _Bool y1_4_comar0;
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
  y1_1_comar0 = r0_inp ^ reg(reg(reg(r0_inp)));
  y1_2_comar0 = y1_1_comar0 ^ reg(reg(r0_1_inp));
  y1_3_comar0 = y1_2_comar0 ^ reg(reg(r1_1_inp));
  y1_4_comar0 = y1_3_comar0 ^ reg(reg(r2_1_inp));
  T0_1 = y1_4_comar0 ^ reg(reg(r3_1_inp));
  L10_0 = reg(reg(reg(!L2_0)));
  L10_1 = reg(reg(reg(!L2_1)));
  _Bool i1_comar1;
  _Bool i2_comar1;
  _Bool p4_comar1;
  _Bool p2_comar1;
  _Bool p3_comar1;
  _Bool p1_comar1;
  _Bool i1xori2_comar1;
  _Bool i0xori3_comar1;
  _Bool m0_comar1;
  _Bool m1_comar1;
  _Bool m2_comar1;
  _Bool m3_comar1;
  _Bool i0_comar1;
  _Bool i3_comar1;
  _Bool y1_1_comar1;
  _Bool y1_2_comar1;
  _Bool y1_3_comar1;
  _Bool y1_4_comar1;
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
  y1_1_comar1 = r0_inp ^ reg(reg(reg(r0_inp)));
  y1_2_comar1 = y1_1_comar1 ^ reg(reg(r0_1_inp));
  y1_3_comar1 = y1_2_comar1 ^ reg(reg(r1_1_inp));
  y1_4_comar1 = y1_3_comar1 ^ reg(reg(r2_1_inp));
  T2_1 = y1_4_comar1 ^ reg(reg(r3_1_inp));
  Q2_0 = T0_0 ^ L2_0;
  L4_0 = T0_0 ^ T2_0;
  Q7_0 = T0_0 ^ L5_0;
  Q6_0 = L4_0 ^ L3_0;
  Q2_1 = T0_1 ^ L2_1;
  L4_1 = T0_1 ^ T2_1;
  Q7_1 = T0_1 ^ L5_1;
  Q6_1 = L4_1 ^ L3_1;
  _Bool i1_comar2;
  _Bool i2_comar2;
  _Bool p4_comar2;
  _Bool p2_comar2;
  _Bool p3_comar2;
  _Bool p1_comar2;
  _Bool i1xori2_comar2;
  _Bool i0xori3_comar2;
  _Bool m0_comar2;
  _Bool m1_comar2;
  _Bool m2_comar2;
  _Bool m3_comar2;
  _Bool i0_comar2;
  _Bool i3_comar2;
  _Bool y1_1_comar2;
  _Bool y1_2_comar2;
  _Bool y1_3_comar2;
  _Bool y1_4_comar2;
  m0_comar2 = Q2_0 ^ reg(reg(reg(r0_inp)));
  m1_comar2 = Q3_1 ^ reg(reg(reg(r1_inp)));
  m2_comar2 = Q3_0 ^ reg(reg(reg(r1_inp)));
  m3_comar2 = Q2_1 ^ reg(reg(reg(r0_inp)));
  p2_comar2 = reg(m0_comar2) & reg(m1_comar2);
  p3_comar2 = reg(m3_comar2) & reg(m2_comar2);
  p1_comar2 = reg(m0_comar2) & reg(m2_comar2);
  p4_comar2 = reg(m3_comar2) & reg(m1_comar2);
  i0_comar2 = p1_comar2 ^ reg(reg(reg(r0_1_inp)));
  i1_comar2 = p2_comar2 ^ reg(reg(reg(r1_1_inp)));
  i2_comar2 = p3_comar2 ^ reg(reg(reg(r2_1_inp)));
  i3_comar2 = p4_comar2 ^ reg(reg(reg(r3_1_inp)));
  i1xori2_comar2 = reg(i1_comar2) ^ reg(i2_comar2);
  i0xori3_comar2 = reg(i0_comar2) ^ reg(i3_comar2);
  T1_0 = reg(i1xori2_comar2 ^ i0xori3_comar2);
  y1_1_comar2 = r0_inp ^ reg(reg(reg(reg(reg(reg(r0_inp))))));
  y1_2_comar2 = y1_1_comar2 ^ reg(reg(reg(reg(reg(r0_1_inp)))));
  y1_3_comar2 = y1_2_comar2 ^ reg(reg(reg(reg(reg(r1_1_inp)))));
  y1_4_comar2 = y1_3_comar2 ^ reg(reg(reg(reg(reg(r2_1_inp)))));
  T1_1 = y1_4_comar2 ^ reg(reg(reg(reg(reg(r3_1_inp)))));
  _Bool i1_comar3;
  _Bool i2_comar3;
  _Bool p4_comar3;
  _Bool p2_comar3;
  _Bool p3_comar3;
  _Bool p1_comar3;
  _Bool i1xori2_comar3;
  _Bool i0xori3_comar3;
  _Bool m0_comar3;
  _Bool m1_comar3;
  _Bool m2_comar3;
  _Bool m3_comar3;
  _Bool i0_comar3;
  _Bool i3_comar3;
  _Bool y1_1_comar3;
  _Bool y1_2_comar3;
  _Bool y1_3_comar3;
  _Bool y1_4_comar3;
  m0_comar3 = Q6_0 ^ reg(reg(reg(r0_inp)));
  m1_comar3 = Q7_1 ^ reg(reg(reg(r1_inp)));
  m2_comar3 = Q7_0 ^ reg(reg(reg(r1_inp)));
  m3_comar3 = Q6_1 ^ reg(reg(reg(r0_inp)));
  p2_comar3 = reg(m0_comar3) & reg(m1_comar3);
  p3_comar3 = reg(m3_comar3) & reg(m2_comar3);
  p1_comar3 = reg(m0_comar3) & reg(m2_comar3);
  p4_comar3 = reg(m3_comar3) & reg(m1_comar3);
  i0_comar3 = p1_comar3 ^ reg(reg(reg(r0_1_inp)));
  i1_comar3 = p2_comar3 ^ reg(reg(reg(r1_1_inp)));
  i2_comar3 = p3_comar3 ^ reg(reg(reg(r2_1_inp)));
  i3_comar3 = p4_comar3 ^ reg(reg(reg(r3_1_inp)));
  i1xori2_comar3 = reg(i1_comar3) ^ reg(i2_comar3);
  i0xori3_comar3 = reg(i0_comar3) ^ reg(i3_comar3);
  T3_0 = reg(i1xori2_comar3 ^ i0xori3_comar3);
  y1_1_comar3 = r0_inp ^ reg(reg(reg(reg(reg(reg(r0_inp))))));
  y1_2_comar3 = y1_1_comar3 ^ reg(reg(reg(reg(reg(r0_1_inp)))));
  y1_3_comar3 = y1_2_comar3 ^ reg(reg(reg(reg(reg(r1_1_inp)))));
  y1_4_comar3 = y1_3_comar3 ^ reg(reg(reg(reg(reg(r2_1_inp)))));
  T3_1 = y1_4_comar3 ^ reg(reg(reg(reg(reg(r3_1_inp)))));
  L7_0 = reg(reg(reg(T0_0))) ^ T1_0;
  L11_0 = T1_0 ^ L10_0;
  L7_1 = reg(reg(reg(T0_1))) ^ T1_1;
  L11_1 = T1_1 ^ L10_1;
  Y0_01 = L7_0 ^ reg(reg(reg(T2_0)));
  Y1_01 = L8_0 ^ T3_0;
  Y0_11 = L7_1 ^ reg(reg(reg(T2_1)));
  Y1_11 = L8_1 ^ T3_1;
  *Y0_0 = reg(reg(reg(reg(x3_0_inp))) ^ Y0_01);
  *Y1_0 = reg(L7_0 ^ Y1_01);
  *Y2_0 = reg(L11_0 ^ reg(reg(reg(T2_0))));
  *Y3_0 = reg(reg(reg(reg(T2_0))) ^ reg(reg(reg(L5_0))));
  *Y0_1 = reg(reg(reg(reg(x3_1_inp))) ^ Y0_11);
  *Y1_1 = reg(L7_1 ^ Y1_11);
  *Y2_1 = reg(L11_1 ^ reg(reg(reg(T2_1))));
  *Y3_1 = reg(reg(reg(reg(T2_1))) ^ reg(reg(reg(L5_1))));
}


