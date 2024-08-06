#include<stdbool.h>
void sbox(bool a0, bool a1, bool b0, bool b1, bool r0, bool r1, bool r0_1, bool r1_1, bool *y0, bool *y1)
{
	bool b0_preshared, b1_preshared, i1, i2, p2, p3, p1, p4,b0_preshared_1, b1_preshared_1, 
    i1_1, i2_1, p2_1, p3_1, p1_1, p4_1, a0_1, a1_1;
    b0_preshared = b0 ^ r0;
    b1_preshared = b1 ^ r0;
    p2 = a0 & reg(b1_preshared);
    i1 = p2 ^ r1;
    p3 = a1 & reg(b0_preshared);
    i2 = p3 ^ r1;
    p1 = a0 & reg(b0_preshared);
    p4 = a1 & reg(b1_preshared);
    a0_1 = reg(i1) ^ p1;
    a1_1 = reg(i2) ^ p4;
    b0_preshared_1 = b0 ^ r0_1;
    b1_preshared_1 = b1 ^ r0_1;
    p2_1 = a0_1 & reg(b1_preshared_1);
    i1_1 = p2_1 ^ r1_1;
    p3_1 = a1_1 & reg(b0_preshared_1);
    i2_1 = p3_1 ^ r1_1;
    p1_1 = a0_1 & reg(b0_preshared_1);
    p4_1 = a1_1 & reg(b1_preshared_1);
    *y0 = reg(i1_1) ^ p1_1;
    *y1 = reg(i2_1) ^ p4_1;
}
