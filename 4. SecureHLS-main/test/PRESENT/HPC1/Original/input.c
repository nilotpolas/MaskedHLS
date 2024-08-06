void sbox(_Bool x0_0, _Bool x1_0, _Bool x2_0, _Bool x3_0, _Bool x0_1, _Bool x1_1, _Bool x2_1, _Bool x3_1, _Bool r1, _Bool r2, _Bool *Y0_0, _Bool *Y1_0, _Bool *Y2_0, _Bool *Y3_0, _Bool *Y0_1, _Bool *Y1_1, _Bool *Y2_1, _Bool *Y3_1)
{
  _Bool x0_0_inp;
  _Bool x1_0_inp;
  _Bool x2_0_inp;
  _Bool x3_0_inp;
  _Bool x0_1_inp;
  _Bool x1_1_inp;
  _Bool x2_1_inp;
  _Bool x3_1_inp;
  _Bool r1_inp;
  _Bool r2_inp;
  x0_0_inp = x0_0;
  x1_0_inp = x1_0;
  x2_0_inp = x2_0;
  _Bool z3_assgn3;
  z3_assgn3 = reg(x2_0_inp);
  _Bool z243_assgn243;
  z243_assgn243 = x3_0;
  _Bool z243_assgn2430;
  z243_assgn2430 = reg(z243_assgn243);
  x3_0_inp = reg(z243_assgn2430);
  x0_1_inp = x0_1;
  x1_1_inp = x1_1;
  x2_1_inp = x2_1;
  _Bool z5_assgn5;
  z5_assgn5 = reg(x2_1_inp);
  _Bool z253_assgn253;
  z253_assgn253 = x3_1;
  _Bool z253_assgn2530;
  z253_assgn2530 = reg(z253_assgn253);
  x3_1_inp = reg(z253_assgn2530);
  r1_inp = r1;
  r2_inp = r2;
  _Bool z7_assgn7;
  z7_assgn7 = reg(r2_inp);
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
  _Bool Y0_01;
  _Bool Y1_01;
  _Bool Y0_11;
  _Bool Y1_11;
  L0_0 = reg(x1_0_inp) ^ z3_assgn3;
  L1_0 = x0_0_inp ^ x1_0_inp;
  _Bool z51_assgn51;
  _Bool z265_assgn265;
  z265_assgn265 = x0_0_inp;
  _Bool z265_assgn2650;
  z265_assgn2650 = reg(z265_assgn265);
  _Bool z265_assgn2651;
  z265_assgn2651 = reg(z265_assgn2650);
  _Bool z265_assgn2652;
  z265_assgn2652 = reg(z265_assgn2651);
  z51_assgn51 = reg(z265_assgn2652);
  _Bool z52_assgn52;
  _Bool z267_assgn267;
  z267_assgn267 = z3_assgn3;
  _Bool z267_assgn2670;
  z267_assgn2670 = reg(z267_assgn267);
  _Bool z267_assgn2671;
  z267_assgn2671 = reg(z267_assgn2670);
  z52_assgn52 = reg(z267_assgn2671);
  L8_0 = z52_assgn52 ^ z51_assgn51;
  _Bool z54_assgn54;
  _Bool z271_assgn271;
  z271_assgn271 = x0_0_inp;
  _Bool z271_assgn2710;
  z271_assgn2710 = reg(z271_assgn271);
  z54_assgn54 = reg(z271_assgn2710);
  L5_0 = z54_assgn54 ^ x3_0_inp;
  L0_1 = reg(x1_1_inp) ^ z5_assgn5;
  L1_1 = x0_1_inp ^ x1_1_inp;
  _Bool z59_assgn59;
  _Bool z279_assgn279;
  z279_assgn279 = x0_1_inp;
  _Bool z279_assgn2790;
  z279_assgn2790 = reg(z279_assgn279);
  _Bool z279_assgn2791;
  z279_assgn2791 = reg(z279_assgn2790);
  _Bool z279_assgn2792;
  z279_assgn2792 = reg(z279_assgn2791);
  z59_assgn59 = reg(z279_assgn2792);
  _Bool z60_assgn60;
  _Bool z281_assgn281;
  z281_assgn281 = z5_assgn5;
  _Bool z281_assgn2810;
  z281_assgn2810 = reg(z281_assgn281);
  _Bool z281_assgn2811;
  z281_assgn2811 = reg(z281_assgn2810);
  z60_assgn60 = reg(z281_assgn2811);
  L8_1 = z60_assgn60 ^ z59_assgn59;
  _Bool z62_assgn62;
  _Bool z285_assgn285;
  z285_assgn285 = x0_1_inp;
  _Bool z285_assgn2850;
  z285_assgn2850 = reg(z285_assgn285);
  z62_assgn62 = reg(z285_assgn2850);
  L5_1 = z62_assgn62 ^ x3_1_inp;
  Q0_0 = !L0_0;
  Q1_0 = !L1_0;
  Q3_0 = !x3_0_inp;
  Q4_0 = !z3_assgn3;
  Q0_1 = !L0_1;
  Q1_1 = !L1_1;
  Q3_1 = !x3_1_inp;
  Q4_1 = !z5_assgn5;
  _Bool z79_assgn79;
  _Bool z305_assgn305;
  z305_assgn305 = z3_assgn3;
  _Bool z305_assgn3050;
  z305_assgn3050 = reg(z305_assgn305);
  z79_assgn79 = reg(z305_assgn3050);
  _Bool z80_assgn80;
  _Bool z307_assgn307;
  z307_assgn307 = Q1_0;
  _Bool z307_assgn3070;
  z307_assgn3070 = reg(z307_assgn307);
  _Bool z307_assgn3071;
  z307_assgn3071 = reg(z307_assgn3070);
  z80_assgn80 = reg(z307_assgn3071);
  L2_0 = z80_assgn80 ^ z79_assgn79;
  _Bool z82_assgn82;
  _Bool z311_assgn311;
  z311_assgn311 = Q0_0;
  _Bool z311_assgn3110;
  z311_assgn3110 = reg(z311_assgn311);
  z82_assgn82 = reg(z311_assgn3110);
  L3_0 = z82_assgn82 ^ reg(x3_0_inp);
  _Bool z83_assgn83;
  _Bool z315_assgn315;
  z315_assgn315 = z5_assgn5;
  _Bool z315_assgn3150;
  z315_assgn3150 = reg(z315_assgn315);
  z83_assgn83 = reg(z315_assgn3150);
  _Bool z84_assgn84;
  _Bool z317_assgn317;
  z317_assgn317 = Q1_1;
  _Bool z317_assgn3170;
  z317_assgn3170 = reg(z317_assgn317);
  _Bool z317_assgn3171;
  z317_assgn3171 = reg(z317_assgn3170);
  z84_assgn84 = reg(z317_assgn3171);
  L2_1 = z84_assgn84 ^ z83_assgn83;
  _Bool z86_assgn86;
  _Bool z321_assgn321;
  z321_assgn321 = Q0_1;
  _Bool z321_assgn3210;
  z321_assgn3210 = reg(z321_assgn321);
  z86_assgn86 = reg(z321_assgn3210);
  L3_1 = z86_assgn86 ^ reg(x3_1_inp);
  int b0_preshared_hpc10;
  int b1_preshared_hpc10;
  int i1_hpc10;
  int i2_hpc10;
  int p2_hpc10;
  int p3_hpc10;
  int p1_hpc10;
  int p4_hpc10;
  b0_preshared_hpc10 = Q1_0 ^ r1_inp;
  b1_preshared_hpc10 = Q1_1 ^ r1_inp;
  p2_hpc10 = Q0_0 & reg(b1_preshared_hpc10);
  i1_hpc10 = p2_hpc10 ^ z7_assgn7;
  p3_hpc10 = Q0_1 & reg(b0_preshared_hpc10);
  i2_hpc10 = p3_hpc10 ^ z7_assgn7;
  _Bool z99_assgn99;
  _Bool z337_assgn337;
  z337_assgn337 = b0_preshared_hpc10;
  _Bool z337_assgn3370;
  z337_assgn3370 = reg(z337_assgn337);
  z99_assgn99 = reg(z337_assgn3370);
  p1_hpc10 = reg(Q0_0) & z99_assgn99;
  _Bool z101_assgn101;
  _Bool z341_assgn341;
  z341_assgn341 = b1_preshared_hpc10;
  _Bool z341_assgn3410;
  z341_assgn3410 = reg(z341_assgn341);
  z101_assgn101 = reg(z341_assgn3410);
  p4_hpc10 = reg(Q0_1) & z101_assgn101;
  T0_0 = reg(i1_hpc10) ^ p1_hpc10;
  T0_1 = reg(i2_hpc10) ^ p4_hpc10;
  _Bool z1_assgn1;
  z1_assgn1 = !L2_0;
  L10_0 = reg(z1_assgn1);
  _Bool z2_assgn2;
  z2_assgn2 = !L2_1;
  L10_1 = reg(z2_assgn2);
  int b0_preshared_hpc11;
  int b1_preshared_hpc11;
  int i1_hpc11;
  int i2_hpc11;
  int p2_hpc11;
  int p3_hpc11;
  int p1_hpc11;
  int p4_hpc11;
  b0_preshared_hpc11 = Q4_0 ^ reg(r1_inp);
  b1_preshared_hpc11 = Q4_1 ^ reg(r1_inp);
  _Bool z120_assgn120;
  _Bool z361_assgn361;
  z361_assgn361 = x1_0_inp;
  _Bool z361_assgn3610;
  z361_assgn3610 = reg(z361_assgn361);
  z120_assgn120 = reg(z361_assgn3610);
  p2_hpc11 = z120_assgn120 & reg(b1_preshared_hpc11);
  i1_hpc11 = p2_hpc11 ^ reg(z7_assgn7);
  _Bool z124_assgn124;
  _Bool z367_assgn367;
  z367_assgn367 = x1_1_inp;
  _Bool z367_assgn3670;
  z367_assgn3670 = reg(z367_assgn367);
  z124_assgn124 = reg(z367_assgn3670);
  p3_hpc11 = z124_assgn124 & reg(b0_preshared_hpc11);
  i2_hpc11 = p3_hpc11 ^ reg(z7_assgn7);
  _Bool z127_assgn127;
  _Bool z373_assgn373;
  z373_assgn373 = b0_preshared_hpc11;
  _Bool z373_assgn3730;
  z373_assgn3730 = reg(z373_assgn373);
  z127_assgn127 = reg(z373_assgn3730);
  _Bool z128_assgn128;
  _Bool z375_assgn375;
  z375_assgn375 = x1_0_inp;
  _Bool z375_assgn3750;
  z375_assgn3750 = reg(z375_assgn375);
  _Bool z375_assgn3751;
  z375_assgn3751 = reg(z375_assgn3750);
  z128_assgn128 = reg(z375_assgn3751);
  p1_hpc11 = z128_assgn128 & z127_assgn127;
  _Bool z129_assgn129;
  _Bool z379_assgn379;
  z379_assgn379 = b1_preshared_hpc11;
  _Bool z379_assgn3790;
  z379_assgn3790 = reg(z379_assgn379);
  z129_assgn129 = reg(z379_assgn3790);
  _Bool z130_assgn130;
  _Bool z381_assgn381;
  z381_assgn381 = x1_1_inp;
  _Bool z381_assgn3810;
  z381_assgn3810 = reg(z381_assgn381);
  _Bool z381_assgn3811;
  z381_assgn3811 = reg(z381_assgn3810);
  z130_assgn130 = reg(z381_assgn3811);
  p4_hpc11 = z130_assgn130 & z129_assgn129;
  T2_0 = reg(i1_hpc11) ^ p1_hpc11;
  T2_1 = reg(i2_hpc11) ^ p4_hpc11;
  Q2_0 = reg(T0_0) ^ L2_0;
  L4_0 = reg(T0_0) ^ T2_0;
  Q7_0 = T0_0 ^ L5_0;
  Q6_0 = L4_0 ^ L3_0;
  Q2_1 = reg(T0_1) ^ L2_1;
  L4_1 = reg(T0_1) ^ T2_1;
  Q7_1 = T0_1 ^ L5_1;
  Q6_1 = L4_1 ^ L3_1;
  int b0_preshared_hpc12;
  int b1_preshared_hpc12;
  int i1_hpc12;
  int i2_hpc12;
  int p2_hpc12;
  int p3_hpc12;
  int p1_hpc12;
  int p4_hpc12;
  _Bool z151_assgn151;
  _Bool z405_assgn405;
  z405_assgn405 = r1_inp;
  _Bool z405_assgn4050;
  z405_assgn4050 = reg(z405_assgn405);
  z151_assgn151 = reg(z405_assgn4050);
  b0_preshared_hpc12 = Q3_0 ^ z151_assgn151;
  _Bool z153_assgn153;
  _Bool z409_assgn409;
  z409_assgn409 = r1_inp;
  _Bool z409_assgn4090;
  z409_assgn4090 = reg(z409_assgn409);
  z153_assgn153 = reg(z409_assgn4090);
  b1_preshared_hpc12 = Q3_1 ^ z153_assgn153;
  p2_hpc12 = Q2_0 & reg(b1_preshared_hpc12);
  _Bool z157_assgn157;
  _Bool z415_assgn415;
  z415_assgn415 = z7_assgn7;
  _Bool z415_assgn4150;
  z415_assgn4150 = reg(z415_assgn415);
  z157_assgn157 = reg(z415_assgn4150);
  i1_hpc12 = p2_hpc12 ^ z157_assgn157;
  p3_hpc12 = Q2_1 & reg(b0_preshared_hpc12);
  _Bool z161_assgn161;
  _Bool z421_assgn421;
  z421_assgn421 = z7_assgn7;
  _Bool z421_assgn4210;
  z421_assgn4210 = reg(z421_assgn421);
  z161_assgn161 = reg(z421_assgn4210);
  i2_hpc12 = p3_hpc12 ^ z161_assgn161;
  _Bool z163_assgn163;
  _Bool z425_assgn425;
  z425_assgn425 = b0_preshared_hpc12;
  _Bool z425_assgn4250;
  z425_assgn4250 = reg(z425_assgn425);
  z163_assgn163 = reg(z425_assgn4250);
  p1_hpc12 = reg(Q2_0) & z163_assgn163;
  _Bool z165_assgn165;
  _Bool z429_assgn429;
  z429_assgn429 = b1_preshared_hpc12;
  _Bool z429_assgn4290;
  z429_assgn4290 = reg(z429_assgn429);
  z165_assgn165 = reg(z429_assgn4290);
  p4_hpc12 = reg(Q2_1) & z165_assgn165;
  T1_0 = reg(i1_hpc12) ^ p1_hpc12;
  T1_1 = reg(i2_hpc12) ^ p4_hpc12;
  int b0_preshared_hpc13;
  int b1_preshared_hpc13;
  int i1_hpc13;
  int i2_hpc13;
  int p2_hpc13;
  int p3_hpc13;
  int p1_hpc13;
  int p4_hpc13;
  _Bool z171_assgn171;
  _Bool z437_assgn437;
  z437_assgn437 = r1_inp;
  _Bool z437_assgn4370;
  z437_assgn4370 = reg(z437_assgn437);
  z171_assgn171 = reg(z437_assgn4370);
  b0_preshared_hpc13 = Q7_0 ^ z171_assgn171;
  _Bool z173_assgn173;
  _Bool z441_assgn441;
  z441_assgn441 = r1_inp;
  _Bool z441_assgn4410;
  z441_assgn4410 = reg(z441_assgn441);
  z173_assgn173 = reg(z441_assgn4410);
  b1_preshared_hpc13 = Q7_1 ^ z173_assgn173;
  p2_hpc13 = Q6_0 & reg(b1_preshared_hpc13);
  _Bool z177_assgn177;
  _Bool z447_assgn447;
  z447_assgn447 = z7_assgn7;
  _Bool z447_assgn4470;
  z447_assgn4470 = reg(z447_assgn447);
  z177_assgn177 = reg(z447_assgn4470);
  i1_hpc13 = p2_hpc13 ^ z177_assgn177;
  p3_hpc13 = Q6_1 & reg(b0_preshared_hpc13);
  _Bool z181_assgn181;
  _Bool z453_assgn453;
  z453_assgn453 = z7_assgn7;
  _Bool z453_assgn4530;
  z453_assgn4530 = reg(z453_assgn453);
  z181_assgn181 = reg(z453_assgn4530);
  i2_hpc13 = p3_hpc13 ^ z181_assgn181;
  _Bool z183_assgn183;
  _Bool z457_assgn457;
  z457_assgn457 = b0_preshared_hpc13;
  _Bool z457_assgn4570;
  z457_assgn4570 = reg(z457_assgn457);
  z183_assgn183 = reg(z457_assgn4570);
  p1_hpc13 = reg(Q6_0) & z183_assgn183;
  _Bool z185_assgn185;
  _Bool z461_assgn461;
  z461_assgn461 = b1_preshared_hpc13;
  _Bool z461_assgn4610;
  z461_assgn4610 = reg(z461_assgn461);
  z185_assgn185 = reg(z461_assgn4610);
  p4_hpc13 = reg(Q6_1) & z185_assgn185;
  T3_0 = reg(i1_hpc13) ^ p1_hpc13;
  T3_1 = reg(i2_hpc13) ^ p4_hpc13;
  _Bool z192_assgn192;
  _Bool z469_assgn469;
  z469_assgn469 = T0_0;
  _Bool z469_assgn4690;
  z469_assgn4690 = reg(z469_assgn469);
  z192_assgn192 = reg(z469_assgn4690);
  L7_0 = z192_assgn192 ^ T1_0;
  L11_0 = T1_0 ^ L10_0;
  _Bool z196_assgn196;
  _Bool z475_assgn475;
  z475_assgn475 = T0_1;
  _Bool z475_assgn4750;
  z475_assgn4750 = reg(z475_assgn475);
  z196_assgn196 = reg(z475_assgn4750);
  L7_1 = z196_assgn196 ^ T1_1;
  L11_1 = T1_1 ^ L10_1;
  Y0_01 = L7_0 ^ reg(T2_0);
  Y1_01 = L8_0 ^ T3_0;
  Y0_11 = L7_1 ^ reg(T2_1);
  Y1_11 = L8_1 ^ T3_1;
  _Bool z9_assgn9;
  _Bool z208_assgn208;
  _Bool z489_assgn489;
  z489_assgn489 = x3_0_inp;
  _Bool z489_assgn4890;
  z489_assgn4890 = reg(z489_assgn489);
  z208_assgn208 = reg(z489_assgn4890);
  z9_assgn9 = z208_assgn208 ^ Y0_01;
  *Y0_0 = reg(z9_assgn9);
  *Y1_0 = reg(L7_0 ^ Y1_01);
  _Bool z11_assgn11;
  z11_assgn11 = L11_0 ^ reg(T2_0);
  *Y2_0 = reg(z11_assgn11);
  _Bool z13_assgn13;
  _Bool z217_assgn217;
  _Bool z501_assgn501;
  z501_assgn501 = L5_0;
  _Bool z501_assgn5010;
  z501_assgn5010 = reg(z501_assgn501);
  z217_assgn217 = reg(z501_assgn5010);
  z13_assgn13 = reg(T2_0) ^ z217_assgn217;
  *Y3_0 = reg(z13_assgn13);
  _Bool z15_assgn15;
  _Bool z222_assgn222;
  _Bool z507_assgn507;
  z507_assgn507 = x3_1_inp;
  _Bool z507_assgn5070;
  z507_assgn5070 = reg(z507_assgn507);
  z222_assgn222 = reg(z507_assgn5070);
  z15_assgn15 = z222_assgn222 ^ Y0_11;
  *Y0_1 = reg(z15_assgn15);
  *Y1_1 = reg(L7_1 ^ Y1_11);
  _Bool z17_assgn17;
  z17_assgn17 = L11_1 ^ reg(T2_1);
  *Y2_1 = reg(z17_assgn17);
  _Bool z19_assgn19;
  _Bool z231_assgn231;
  _Bool z519_assgn519;
  z519_assgn519 = L5_1;
  _Bool z519_assgn5190;
  z519_assgn5190 = reg(z519_assgn519);
  z231_assgn231 = reg(z519_assgn5190);
  z19_assgn19 = reg(T2_1) ^ z231_assgn231;
  *Y3_1 = reg(z19_assgn19);
}


