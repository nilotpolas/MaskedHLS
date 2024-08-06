void sbox(_Bool a0, _Bool a1, _Bool b0, _Bool b1, _Bool r0, _Bool r1, _Bool r0_1, _Bool r1_1, _Bool *y0, _Bool *y1)
{
  _Bool b0_preshared;
  _Bool b1_preshared;
  _Bool i1;
  _Bool i2;
  _Bool p2;
  _Bool p3;
  _Bool p1;
  _Bool p4;
  _Bool b0_preshared_1;
  _Bool b1_preshared_1;
  _Bool i1_1;
  _Bool i2_1;
  _Bool p2_1;
  _Bool p3_1;
  _Bool p1_1;
  _Bool p4_1;
  _Bool a0_1;
  _Bool a1_1;
  b0_preshared = b0 ^ r0;
  b1_preshared = b1 ^ r0;
  p2 = a0 & reg(b1_preshared);
  i1 = p2 ^ r1;
  p3 = a1 & reg(b0_preshared);
  i2 = p3 ^ r1;
  p1 = a0 & reg(b0_preshared);
  p4 = a1 & reg(b1_preshared);
  a0_1 = reg(i1) ^ reg(p1);
  a1_1 = reg(i2) ^ reg(p4);
  b0_preshared_1 = b0 ^ r0_1;
  b1_preshared_1 = b1 ^ r0_1;
  p2_1 = a0_1 & reg(reg(b1_preshared_1));
  i1_1 = p2_1 ^ r1_1;
  p3_1 = a1_1 & reg(reg(b0_preshared_1));
  i2_1 = p3_1 ^ r1_1;
  p1_1 = a0_1 & reg(reg(b0_preshared_1));
  p4_1 = a1_1 & reg(reg(b1_preshared_1));
  *y0 = reg(i1_1) ^ reg(p1_1);
  *y1 = reg(i2_1) ^ reg(p4_1);
}


