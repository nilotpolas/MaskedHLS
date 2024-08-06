#include <stdbool.h>
void sbox(bool a0_inp, bool a1_inp, bool b0_inp, bool b1_inp, bool r_inp, bool r_1_inp, bool *y0, bool *y1)
{
    bool u0, u1, i0, i1, v0, v1, p0, p1, p01, p2, p3, p23, a0_neg, a1_neg,
    a0_1, a1_1, u0_1, u1_1, i0_1, i1_1, v0_1, v1_1, p0_1, p1_1, p01_1, p2_1, 
    p3_1, p23_1, a0_neg_1, a1_neg_1, a1_n, a0, a1, b0, b1, r, r_1;
    
    a0 = a0_inp;
    a1 = a1_inp;
    b0 = b0_inp;
    b1 = b1_inp;
    r = r_inp;
    r_1 = r_1_inp;
    a0_neg = !a0;
    a1_neg = !a1;
    u0 = a0_neg & reg(r);
    u1 = a1_neg & reg(r);
    v0 = b0 ^ r;
    v1 = b1 ^ r;
    p0 = a0 & reg(b0);
    p1 = a0 & reg(v1);
    p01 = reg(u0) ^ reg(p1);
    a0_1 = reg(p0) ^ p01; 
    p2 = reg(a1) & reg(b1);
    p3 = reg(a1) & reg(v0);
    p23 = reg(u1) ^ reg(p3);
    a1_1 = reg(p2) ^ p23;
    a0_neg_1 = !a0_1;
    a1_neg_1 = !a1_1;
    u0_1 = a0_neg_1 & reg(r_1);
    u1_1 = a1_neg_1 & reg(r_1);
    v0_1 = b0 ^ r_1;
    v1_1 = b1 ^ r_1;
    p0_1 = a0_1 & reg(b0);
    p1_1 = a0_1 & reg(v1_1);
    p01_1 = reg(u0_1) ^ reg(p1_1);
    *y0 = reg(p0_1) ^ p01_1; 
    p2_1 = reg(a1_1) & reg(b1);
    p3_1 = reg(a1_1) & reg(v0_1);
    p23_1 = reg(u1_1) ^ reg(p3_1);
    *y1 = reg(p2_1) ^ p23_1;
}