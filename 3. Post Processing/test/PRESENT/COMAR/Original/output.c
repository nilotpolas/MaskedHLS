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
  _Bool z333_assgn333;
  z333_assgn333 = x3_0;
  _Bool z333_assgn3330;
  z333_assgn3330 = reg(z333_assgn333);
  _Bool z333_assgn3331;
  z333_assgn3331 = reg(z333_assgn3330);
  x3_0_inp = reg(z333_assgn3331);
  x0_1_inp = x0_1;
  x1_1_inp = x1_1;
  x2_1_inp = x2_1;
  _Bool z341_assgn341;
  z341_assgn341 = x3_1;
  _Bool z341_assgn3410;
  z341_assgn3410 = reg(z341_assgn341);
  _Bool z341_assgn3411;
  z341_assgn3411 = reg(z341_assgn3410);
  x3_1_inp = reg(z341_assgn3411);
  r0_inp = r0;
  r1_inp = r1;
  r0_1_inp = r0_1;
  _Bool z3_assgn3;
  z3_assgn3 = reg(r0_1_inp);
  r1_1_inp = r1_1;
  _Bool z5_assgn5;
  z5_assgn5 = reg(r1_1_inp);
  r2_1_inp = r2_1;
  _Bool z7_assgn7;
  z7_assgn7 = reg(r2_1_inp);
  r3_1_inp = r3_1;
  _Bool z9_assgn9;
  z9_assgn9 = reg(r3_1_inp);
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
  _Bool z63_assgn63;
  _Bool z367_assgn367;
  z367_assgn367 = x0_0_inp;
  _Bool z367_assgn3670;
  z367_assgn3670 = reg(z367_assgn367);
  _Bool z367_assgn3671;
  z367_assgn3671 = reg(z367_assgn3670);
  _Bool z367_assgn3672;
  z367_assgn3672 = reg(z367_assgn3671);
  _Bool z367_assgn3673;
  z367_assgn3673 = reg(z367_assgn3672);
  _Bool z367_assgn3674;
  z367_assgn3674 = reg(z367_assgn3673);
  z63_assgn63 = reg(z367_assgn3674);
  _Bool z64_assgn64;
  _Bool z369_assgn369;
  z369_assgn369 = x2_0_inp;
  _Bool z369_assgn3690;
  z369_assgn3690 = reg(z369_assgn369);
  _Bool z369_assgn3691;
  z369_assgn3691 = reg(z369_assgn3690);
  _Bool z369_assgn3692;
  z369_assgn3692 = reg(z369_assgn3691);
  _Bool z369_assgn3693;
  z369_assgn3693 = reg(z369_assgn3692);
  _Bool z369_assgn3694;
  z369_assgn3694 = reg(z369_assgn3693);
  z64_assgn64 = reg(z369_assgn3694);
  L8_0 = z64_assgn64 ^ z63_assgn63;
  _Bool z66_assgn66;
  _Bool z373_assgn373;
  z373_assgn373 = x0_0_inp;
  _Bool z373_assgn3730;
  z373_assgn3730 = reg(z373_assgn373);
  _Bool z373_assgn3731;
  z373_assgn3731 = reg(z373_assgn3730);
  z66_assgn66 = reg(z373_assgn3731);
  L5_0 = z66_assgn66 ^ x3_0_inp;
  L0_1 = x1_1_inp ^ x2_1_inp;
  L1_1 = x0_1_inp ^ x1_1_inp;
  _Bool z71_assgn71;
  _Bool z381_assgn381;
  z381_assgn381 = x0_1_inp;
  _Bool z381_assgn3810;
  z381_assgn3810 = reg(z381_assgn381);
  _Bool z381_assgn3811;
  z381_assgn3811 = reg(z381_assgn3810);
  _Bool z381_assgn3812;
  z381_assgn3812 = reg(z381_assgn3811);
  _Bool z381_assgn3813;
  z381_assgn3813 = reg(z381_assgn3812);
  _Bool z381_assgn3814;
  z381_assgn3814 = reg(z381_assgn3813);
  z71_assgn71 = reg(z381_assgn3814);
  _Bool z72_assgn72;
  _Bool z383_assgn383;
  z383_assgn383 = x2_1_inp;
  _Bool z383_assgn3830;
  z383_assgn3830 = reg(z383_assgn383);
  _Bool z383_assgn3831;
  z383_assgn3831 = reg(z383_assgn3830);
  _Bool z383_assgn3832;
  z383_assgn3832 = reg(z383_assgn3831);
  _Bool z383_assgn3833;
  z383_assgn3833 = reg(z383_assgn3832);
  _Bool z383_assgn3834;
  z383_assgn3834 = reg(z383_assgn3833);
  z72_assgn72 = reg(z383_assgn3834);
  L8_1 = z72_assgn72 ^ z71_assgn71;
  _Bool z74_assgn74;
  _Bool z387_assgn387;
  z387_assgn387 = x0_1_inp;
  _Bool z387_assgn3870;
  z387_assgn3870 = reg(z387_assgn387);
  _Bool z387_assgn3871;
  z387_assgn3871 = reg(z387_assgn3870);
  z74_assgn74 = reg(z387_assgn3871);
  L5_1 = z74_assgn74 ^ x3_1_inp;
  Q0_0 = !L0_0;
  Q1_0 = !L1_0;
  Q3_0 = !x3_0_inp;
  Q4_0 = !x2_0_inp;
  Q0_1 = !L0_1;
  Q1_1 = !L1_1;
  Q3_1 = !x3_1_inp;
  Q4_1 = !x2_1_inp;
  _Bool z91_assgn91;
  _Bool z407_assgn407;
  z407_assgn407 = x2_0_inp;
  _Bool z407_assgn4070;
  z407_assgn4070 = reg(z407_assgn407);
  _Bool z407_assgn4071;
  z407_assgn4071 = reg(z407_assgn4070);
  z91_assgn91 = reg(z407_assgn4071);
  _Bool z92_assgn92;
  _Bool z409_assgn409;
  z409_assgn409 = Q1_0;
  _Bool z409_assgn4090;
  z409_assgn4090 = reg(z409_assgn409);
  _Bool z409_assgn4091;
  z409_assgn4091 = reg(z409_assgn4090);
  z92_assgn92 = reg(z409_assgn4091);
  L2_0 = z92_assgn92 ^ z91_assgn91;
  _Bool z94_assgn94;
  _Bool z413_assgn413;
  z413_assgn413 = Q0_0;
  _Bool z413_assgn4130;
  z413_assgn4130 = reg(z413_assgn413);
  _Bool z413_assgn4131;
  z413_assgn4131 = reg(z413_assgn4130);
  z94_assgn94 = reg(z413_assgn4131);
  L3_0 = z94_assgn94 ^ x3_0_inp;
  _Bool z95_assgn95;
  _Bool z417_assgn417;
  z417_assgn417 = x2_1_inp;
  _Bool z417_assgn4170;
  z417_assgn4170 = reg(z417_assgn417);
  _Bool z417_assgn4171;
  z417_assgn4171 = reg(z417_assgn4170);
  z95_assgn95 = reg(z417_assgn4171);
  _Bool z96_assgn96;
  _Bool z419_assgn419;
  z419_assgn419 = Q1_1;
  _Bool z419_assgn4190;
  z419_assgn4190 = reg(z419_assgn419);
  _Bool z419_assgn4191;
  z419_assgn4191 = reg(z419_assgn4190);
  z96_assgn96 = reg(z419_assgn4191);
  L2_1 = z96_assgn96 ^ z95_assgn95;
  _Bool z98_assgn98;
  _Bool z423_assgn423;
  z423_assgn423 = Q0_1;
  _Bool z423_assgn4230;
  z423_assgn4230 = reg(z423_assgn423);
  _Bool z423_assgn4231;
  z423_assgn4231 = reg(z423_assgn4230);
  z98_assgn98 = reg(z423_assgn4231);
  L3_1 = z98_assgn98 ^ x3_1_inp;
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
  i0_comar0 = p1_comar0 ^ z3_assgn3;
  i1_comar0 = p2_comar0 ^ z5_assgn5;
  i2_comar0 = p3_comar0 ^ z7_assgn7;
  i3_comar0 = p4_comar0 ^ z9_assgn9;
  i1xori2_comar0 = reg(i1_comar0) ^ reg(i2_comar0);
  i0xori3_comar0 = reg(i0_comar0) ^ reg(i3_comar0);
  T0_0 = reg(i1xori2_comar0 ^ i0xori3_comar0);
  _Bool z129_assgn129;
  _Bool z457_assgn457;
  z457_assgn457 = r0_inp;
  _Bool z457_assgn4570;
  z457_assgn4570 = reg(z457_assgn457);
  _Bool z457_assgn4571;
  z457_assgn4571 = reg(z457_assgn4570);
  z129_assgn129 = reg(z457_assgn4571);
  y1_1_comar0 = r0_inp ^ z129_assgn129;
  _Bool z131_assgn131;
  _Bool z461_assgn461;
  z461_assgn461 = z3_assgn3;
  _Bool z461_assgn4610;
  z461_assgn4610 = reg(z461_assgn461);
  z131_assgn131 = reg(z461_assgn4610);
  y1_2_comar0 = y1_1_comar0 ^ z131_assgn131;
  _Bool z133_assgn133;
  _Bool z465_assgn465;
  z465_assgn465 = z5_assgn5;
  _Bool z465_assgn4650;
  z465_assgn4650 = reg(z465_assgn465);
  z133_assgn133 = reg(z465_assgn4650);
  y1_3_comar0 = y1_2_comar0 ^ z133_assgn133;
  _Bool z135_assgn135;
  _Bool z469_assgn469;
  z469_assgn469 = z7_assgn7;
  _Bool z469_assgn4690;
  z469_assgn4690 = reg(z469_assgn469);
  z135_assgn135 = reg(z469_assgn4690);
  y1_4_comar0 = y1_3_comar0 ^ z135_assgn135;
  _Bool z137_assgn137;
  _Bool z473_assgn473;
  z473_assgn473 = z9_assgn9;
  _Bool z473_assgn4730;
  z473_assgn4730 = reg(z473_assgn473);
  z137_assgn137 = reg(z473_assgn4730);
  T0_1 = y1_4_comar0 ^ z137_assgn137;
  _Bool z1_assgn1;
  z1_assgn1 = !L2_0;
  _Bool z479_assgn479;
  z479_assgn479 = z1_assgn1;
  _Bool z479_assgn4790;
  z479_assgn4790 = reg(z479_assgn479);
  _Bool z479_assgn4791;
  z479_assgn4791 = reg(z479_assgn4790);
  L10_0 = reg(z479_assgn4791);
  _Bool z2_assgn2;
  z2_assgn2 = !L2_1;
  _Bool z483_assgn483;
  z483_assgn483 = z2_assgn2;
  _Bool z483_assgn4830;
  z483_assgn4830 = reg(z483_assgn483);
  _Bool z483_assgn4831;
  z483_assgn4831 = reg(z483_assgn4830);
  L10_1 = reg(z483_assgn4831);
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
  i0_comar1 = p1_comar1 ^ z3_assgn3;
  i1_comar1 = p2_comar1 ^ z5_assgn5;
  i2_comar1 = p3_comar1 ^ z7_assgn7;
  i3_comar1 = p4_comar1 ^ z9_assgn9;
  i1xori2_comar1 = reg(i1_comar1) ^ reg(i2_comar1);
  i0xori3_comar1 = reg(i0_comar1) ^ reg(i3_comar1);
  T2_0 = reg(i1xori2_comar1 ^ i0xori3_comar1);
  _Bool z177_assgn177;
  _Bool z515_assgn515;
  z515_assgn515 = r0_inp;
  _Bool z515_assgn5150;
  z515_assgn5150 = reg(z515_assgn515);
  _Bool z515_assgn5151;
  z515_assgn5151 = reg(z515_assgn5150);
  z177_assgn177 = reg(z515_assgn5151);
  y1_1_comar1 = r0_inp ^ z177_assgn177;
  _Bool z179_assgn179;
  _Bool z519_assgn519;
  z519_assgn519 = z3_assgn3;
  _Bool z519_assgn5190;
  z519_assgn5190 = reg(z519_assgn519);
  z179_assgn179 = reg(z519_assgn5190);
  y1_2_comar1 = y1_1_comar1 ^ z179_assgn179;
  _Bool z181_assgn181;
  _Bool z523_assgn523;
  z523_assgn523 = z5_assgn5;
  _Bool z523_assgn5230;
  z523_assgn5230 = reg(z523_assgn523);
  z181_assgn181 = reg(z523_assgn5230);
  y1_3_comar1 = y1_2_comar1 ^ z181_assgn181;
  _Bool z183_assgn183;
  _Bool z527_assgn527;
  z527_assgn527 = z7_assgn7;
  _Bool z527_assgn5270;
  z527_assgn5270 = reg(z527_assgn527);
  z183_assgn183 = reg(z527_assgn5270);
  y1_4_comar1 = y1_3_comar1 ^ z183_assgn183;
  _Bool z185_assgn185;
  _Bool z531_assgn531;
  z531_assgn531 = z9_assgn9;
  _Bool z531_assgn5310;
  z531_assgn5310 = reg(z531_assgn531);
  z185_assgn185 = reg(z531_assgn5310);
  T2_1 = y1_4_comar1 ^ z185_assgn185;
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
  _Bool z203_assgn203;
  _Bool z551_assgn551;
  z551_assgn551 = r0_inp;
  _Bool z551_assgn5510;
  z551_assgn5510 = reg(z551_assgn551);
  _Bool z551_assgn5511;
  z551_assgn5511 = reg(z551_assgn5510);
  z203_assgn203 = reg(z551_assgn5511);
  m0_comar2 = Q2_0 ^ z203_assgn203;
  _Bool z205_assgn205;
  _Bool z555_assgn555;
  z555_assgn555 = r1_inp;
  _Bool z555_assgn5550;
  z555_assgn5550 = reg(z555_assgn555);
  _Bool z555_assgn5551;
  z555_assgn5551 = reg(z555_assgn5550);
  z205_assgn205 = reg(z555_assgn5551);
  m1_comar2 = Q3_1 ^ z205_assgn205;
  _Bool z207_assgn207;
  _Bool z559_assgn559;
  z559_assgn559 = r1_inp;
  _Bool z559_assgn5590;
  z559_assgn5590 = reg(z559_assgn559);
  _Bool z559_assgn5591;
  z559_assgn5591 = reg(z559_assgn5590);
  z207_assgn207 = reg(z559_assgn5591);
  m2_comar2 = Q3_0 ^ z207_assgn207;
  _Bool z209_assgn209;
  _Bool z563_assgn563;
  z563_assgn563 = r0_inp;
  _Bool z563_assgn5630;
  z563_assgn5630 = reg(z563_assgn563);
  _Bool z563_assgn5631;
  z563_assgn5631 = reg(z563_assgn5630);
  z209_assgn209 = reg(z563_assgn5631);
  m3_comar2 = Q2_1 ^ z209_assgn209;
  p2_comar2 = reg(m0_comar2) & reg(m1_comar2);
  p3_comar2 = reg(m3_comar2) & reg(m2_comar2);
  p1_comar2 = reg(m0_comar2) & reg(m2_comar2);
  p4_comar2 = reg(m3_comar2) & reg(m1_comar2);
  _Bool z219_assgn219;
  _Bool z575_assgn575;
  z575_assgn575 = z3_assgn3;
  _Bool z575_assgn5750;
  z575_assgn5750 = reg(z575_assgn575);
  _Bool z575_assgn5751;
  z575_assgn5751 = reg(z575_assgn5750);
  z219_assgn219 = reg(z575_assgn5751);
  i0_comar2 = p1_comar2 ^ z219_assgn219;
  _Bool z221_assgn221;
  _Bool z579_assgn579;
  z579_assgn579 = z5_assgn5;
  _Bool z579_assgn5790;
  z579_assgn5790 = reg(z579_assgn579);
  _Bool z579_assgn5791;
  z579_assgn5791 = reg(z579_assgn5790);
  z221_assgn221 = reg(z579_assgn5791);
  i1_comar2 = p2_comar2 ^ z221_assgn221;
  _Bool z223_assgn223;
  _Bool z583_assgn583;
  z583_assgn583 = z7_assgn7;
  _Bool z583_assgn5830;
  z583_assgn5830 = reg(z583_assgn583);
  _Bool z583_assgn5831;
  z583_assgn5831 = reg(z583_assgn5830);
  z223_assgn223 = reg(z583_assgn5831);
  i2_comar2 = p3_comar2 ^ z223_assgn223;
  _Bool z225_assgn225;
  _Bool z587_assgn587;
  z587_assgn587 = z9_assgn9;
  _Bool z587_assgn5870;
  z587_assgn5870 = reg(z587_assgn587);
  _Bool z587_assgn5871;
  z587_assgn5871 = reg(z587_assgn5870);
  z225_assgn225 = reg(z587_assgn5871);
  i3_comar2 = p4_comar2 ^ z225_assgn225;
  i1xori2_comar2 = reg(i1_comar2) ^ reg(i2_comar2);
  i0xori3_comar2 = reg(i0_comar2) ^ reg(i3_comar2);
  T1_0 = reg(i1xori2_comar2 ^ i0xori3_comar2);
  _Bool z233_assgn233;
  _Bool z597_assgn597;
  z597_assgn597 = r0_inp;
  _Bool z597_assgn5970;
  z597_assgn5970 = reg(z597_assgn597);
  _Bool z597_assgn5971;
  z597_assgn5971 = reg(z597_assgn5970);
  _Bool z597_assgn5972;
  z597_assgn5972 = reg(z597_assgn5971);
  _Bool z597_assgn5973;
  z597_assgn5973 = reg(z597_assgn5972);
  _Bool z597_assgn5974;
  z597_assgn5974 = reg(z597_assgn5973);
  z233_assgn233 = reg(z597_assgn5974);
  y1_1_comar2 = r0_inp ^ z233_assgn233;
  _Bool z235_assgn235;
  _Bool z601_assgn601;
  z601_assgn601 = z3_assgn3;
  _Bool z601_assgn6010;
  z601_assgn6010 = reg(z601_assgn601);
  _Bool z601_assgn6011;
  z601_assgn6011 = reg(z601_assgn6010);
  _Bool z601_assgn6012;
  z601_assgn6012 = reg(z601_assgn6011);
  _Bool z601_assgn6013;
  z601_assgn6013 = reg(z601_assgn6012);
  z235_assgn235 = reg(z601_assgn6013);
  y1_2_comar2 = y1_1_comar2 ^ z235_assgn235;
  _Bool z237_assgn237;
  _Bool z605_assgn605;
  z605_assgn605 = z5_assgn5;
  _Bool z605_assgn6050;
  z605_assgn6050 = reg(z605_assgn605);
  _Bool z605_assgn6051;
  z605_assgn6051 = reg(z605_assgn6050);
  _Bool z605_assgn6052;
  z605_assgn6052 = reg(z605_assgn6051);
  _Bool z605_assgn6053;
  z605_assgn6053 = reg(z605_assgn6052);
  z237_assgn237 = reg(z605_assgn6053);
  y1_3_comar2 = y1_2_comar2 ^ z237_assgn237;
  _Bool z239_assgn239;
  _Bool z609_assgn609;
  z609_assgn609 = z7_assgn7;
  _Bool z609_assgn6090;
  z609_assgn6090 = reg(z609_assgn609);
  _Bool z609_assgn6091;
  z609_assgn6091 = reg(z609_assgn6090);
  _Bool z609_assgn6092;
  z609_assgn6092 = reg(z609_assgn6091);
  _Bool z609_assgn6093;
  z609_assgn6093 = reg(z609_assgn6092);
  z239_assgn239 = reg(z609_assgn6093);
  y1_4_comar2 = y1_3_comar2 ^ z239_assgn239;
  _Bool z241_assgn241;
  _Bool z613_assgn613;
  z613_assgn613 = z9_assgn9;
  _Bool z613_assgn6130;
  z613_assgn6130 = reg(z613_assgn613);
  _Bool z613_assgn6131;
  z613_assgn6131 = reg(z613_assgn6130);
  _Bool z613_assgn6132;
  z613_assgn6132 = reg(z613_assgn6131);
  _Bool z613_assgn6133;
  z613_assgn6133 = reg(z613_assgn6132);
  z241_assgn241 = reg(z613_assgn6133);
  T1_1 = y1_4_comar2 ^ z241_assgn241;
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
  _Bool z243_assgn243;
  _Bool z617_assgn617;
  z617_assgn617 = r0_inp;
  _Bool z617_assgn6170;
  z617_assgn6170 = reg(z617_assgn617);
  _Bool z617_assgn6171;
  z617_assgn6171 = reg(z617_assgn6170);
  z243_assgn243 = reg(z617_assgn6171);
  m0_comar3 = Q6_0 ^ z243_assgn243;
  _Bool z245_assgn245;
  _Bool z621_assgn621;
  z621_assgn621 = r1_inp;
  _Bool z621_assgn6210;
  z621_assgn6210 = reg(z621_assgn621);
  _Bool z621_assgn6211;
  z621_assgn6211 = reg(z621_assgn6210);
  z245_assgn245 = reg(z621_assgn6211);
  m1_comar3 = Q7_1 ^ z245_assgn245;
  _Bool z247_assgn247;
  _Bool z625_assgn625;
  z625_assgn625 = r1_inp;
  _Bool z625_assgn6250;
  z625_assgn6250 = reg(z625_assgn625);
  _Bool z625_assgn6251;
  z625_assgn6251 = reg(z625_assgn6250);
  z247_assgn247 = reg(z625_assgn6251);
  m2_comar3 = Q7_0 ^ z247_assgn247;
  _Bool z249_assgn249;
  _Bool z629_assgn629;
  z629_assgn629 = r0_inp;
  _Bool z629_assgn6290;
  z629_assgn6290 = reg(z629_assgn629);
  _Bool z629_assgn6291;
  z629_assgn6291 = reg(z629_assgn6290);
  z249_assgn249 = reg(z629_assgn6291);
  m3_comar3 = Q6_1 ^ z249_assgn249;
  p2_comar3 = reg(m0_comar3) & reg(m1_comar3);
  p3_comar3 = reg(m3_comar3) & reg(m2_comar3);
  p1_comar3 = reg(m0_comar3) & reg(m2_comar3);
  p4_comar3 = reg(m3_comar3) & reg(m1_comar3);
  _Bool z259_assgn259;
  _Bool z641_assgn641;
  z641_assgn641 = z3_assgn3;
  _Bool z641_assgn6410;
  z641_assgn6410 = reg(z641_assgn641);
  _Bool z641_assgn6411;
  z641_assgn6411 = reg(z641_assgn6410);
  z259_assgn259 = reg(z641_assgn6411);
  i0_comar3 = p1_comar3 ^ z259_assgn259;
  _Bool z261_assgn261;
  _Bool z645_assgn645;
  z645_assgn645 = z5_assgn5;
  _Bool z645_assgn6450;
  z645_assgn6450 = reg(z645_assgn645);
  _Bool z645_assgn6451;
  z645_assgn6451 = reg(z645_assgn6450);
  z261_assgn261 = reg(z645_assgn6451);
  i1_comar3 = p2_comar3 ^ z261_assgn261;
  _Bool z263_assgn263;
  _Bool z649_assgn649;
  z649_assgn649 = z7_assgn7;
  _Bool z649_assgn6490;
  z649_assgn6490 = reg(z649_assgn649);
  _Bool z649_assgn6491;
  z649_assgn6491 = reg(z649_assgn6490);
  z263_assgn263 = reg(z649_assgn6491);
  i2_comar3 = p3_comar3 ^ z263_assgn263;
  _Bool z265_assgn265;
  _Bool z653_assgn653;
  z653_assgn653 = z9_assgn9;
  _Bool z653_assgn6530;
  z653_assgn6530 = reg(z653_assgn653);
  _Bool z653_assgn6531;
  z653_assgn6531 = reg(z653_assgn6530);
  z265_assgn265 = reg(z653_assgn6531);
  i3_comar3 = p4_comar3 ^ z265_assgn265;
  i1xori2_comar3 = reg(i1_comar3) ^ reg(i2_comar3);
  i0xori3_comar3 = reg(i0_comar3) ^ reg(i3_comar3);
  T3_0 = reg(i1xori2_comar3 ^ i0xori3_comar3);
  _Bool z273_assgn273;
  _Bool z663_assgn663;
  z663_assgn663 = r0_inp;
  _Bool z663_assgn6630;
  z663_assgn6630 = reg(z663_assgn663);
  _Bool z663_assgn6631;
  z663_assgn6631 = reg(z663_assgn6630);
  _Bool z663_assgn6632;
  z663_assgn6632 = reg(z663_assgn6631);
  _Bool z663_assgn6633;
  z663_assgn6633 = reg(z663_assgn6632);
  _Bool z663_assgn6634;
  z663_assgn6634 = reg(z663_assgn6633);
  z273_assgn273 = reg(z663_assgn6634);
  y1_1_comar3 = r0_inp ^ z273_assgn273;
  _Bool z275_assgn275;
  _Bool z667_assgn667;
  z667_assgn667 = z3_assgn3;
  _Bool z667_assgn6670;
  z667_assgn6670 = reg(z667_assgn667);
  _Bool z667_assgn6671;
  z667_assgn6671 = reg(z667_assgn6670);
  _Bool z667_assgn6672;
  z667_assgn6672 = reg(z667_assgn6671);
  _Bool z667_assgn6673;
  z667_assgn6673 = reg(z667_assgn6672);
  z275_assgn275 = reg(z667_assgn6673);
  y1_2_comar3 = y1_1_comar3 ^ z275_assgn275;
  _Bool z277_assgn277;
  _Bool z671_assgn671;
  z671_assgn671 = z5_assgn5;
  _Bool z671_assgn6710;
  z671_assgn6710 = reg(z671_assgn671);
  _Bool z671_assgn6711;
  z671_assgn6711 = reg(z671_assgn6710);
  _Bool z671_assgn6712;
  z671_assgn6712 = reg(z671_assgn6711);
  _Bool z671_assgn6713;
  z671_assgn6713 = reg(z671_assgn6712);
  z277_assgn277 = reg(z671_assgn6713);
  y1_3_comar3 = y1_2_comar3 ^ z277_assgn277;
  _Bool z279_assgn279;
  _Bool z675_assgn675;
  z675_assgn675 = z7_assgn7;
  _Bool z675_assgn6750;
  z675_assgn6750 = reg(z675_assgn675);
  _Bool z675_assgn6751;
  z675_assgn6751 = reg(z675_assgn6750);
  _Bool z675_assgn6752;
  z675_assgn6752 = reg(z675_assgn6751);
  _Bool z675_assgn6753;
  z675_assgn6753 = reg(z675_assgn6752);
  z279_assgn279 = reg(z675_assgn6753);
  y1_4_comar3 = y1_3_comar3 ^ z279_assgn279;
  _Bool z281_assgn281;
  _Bool z679_assgn679;
  z679_assgn679 = z9_assgn9;
  _Bool z679_assgn6790;
  z679_assgn6790 = reg(z679_assgn679);
  _Bool z679_assgn6791;
  z679_assgn6791 = reg(z679_assgn6790);
  _Bool z679_assgn6792;
  z679_assgn6792 = reg(z679_assgn6791);
  _Bool z679_assgn6793;
  z679_assgn6793 = reg(z679_assgn6792);
  z281_assgn281 = reg(z679_assgn6793);
  T3_1 = y1_4_comar3 ^ z281_assgn281;
  _Bool z284_assgn284;
  _Bool z683_assgn683;
  z683_assgn683 = T0_0;
  _Bool z683_assgn6830;
  z683_assgn6830 = reg(z683_assgn683);
  _Bool z683_assgn6831;
  z683_assgn6831 = reg(z683_assgn6830);
  z284_assgn284 = reg(z683_assgn6831);
  L7_0 = z284_assgn284 ^ T1_0;
  L11_0 = T1_0 ^ L10_0;
  _Bool z288_assgn288;
  _Bool z689_assgn689;
  z689_assgn689 = T0_1;
  _Bool z689_assgn6890;
  z689_assgn6890 = reg(z689_assgn689);
  _Bool z689_assgn6891;
  z689_assgn6891 = reg(z689_assgn6890);
  z288_assgn288 = reg(z689_assgn6891);
  L7_1 = z288_assgn288 ^ T1_1;
  L11_1 = T1_1 ^ L10_1;
  _Bool z291_assgn291;
  _Bool z695_assgn695;
  z695_assgn695 = T2_0;
  _Bool z695_assgn6950;
  z695_assgn6950 = reg(z695_assgn695);
  _Bool z695_assgn6951;
  z695_assgn6951 = reg(z695_assgn6950);
  z291_assgn291 = reg(z695_assgn6951);
  Y0_01 = L7_0 ^ z291_assgn291;
  Y1_01 = L8_0 ^ T3_0;
  _Bool z295_assgn295;
  _Bool z701_assgn701;
  z701_assgn701 = T2_1;
  _Bool z701_assgn7010;
  z701_assgn7010 = reg(z701_assgn701);
  _Bool z701_assgn7011;
  z701_assgn7011 = reg(z701_assgn7010);
  z295_assgn295 = reg(z701_assgn7011);
  Y0_11 = L7_1 ^ z295_assgn295;
  Y1_11 = L8_1 ^ T3_1;
  _Bool z11_assgn11;
  _Bool z300_assgn300;
  _Bool z707_assgn707;
  z707_assgn707 = x3_0_inp;
  _Bool z707_assgn7070;
  z707_assgn7070 = reg(z707_assgn707);
  _Bool z707_assgn7071;
  z707_assgn7071 = reg(z707_assgn7070);
  z300_assgn300 = reg(z707_assgn7071);
  z11_assgn11 = z300_assgn300 ^ Y0_01;
  *Y0_0 = reg(z11_assgn11);
  *Y1_0 = reg(L7_0 ^ Y1_01);
  _Bool z13_assgn13;
  _Bool z305_assgn305;
  _Bool z715_assgn715;
  z715_assgn715 = T2_0;
  _Bool z715_assgn7150;
  z715_assgn7150 = reg(z715_assgn715);
  _Bool z715_assgn7151;
  z715_assgn7151 = reg(z715_assgn7150);
  z305_assgn305 = reg(z715_assgn7151);
  z13_assgn13 = L11_0 ^ z305_assgn305;
  *Y2_0 = reg(z13_assgn13);
  _Bool z15_assgn15;
  _Bool z309_assgn309;
  _Bool z721_assgn721;
  z721_assgn721 = L5_0;
  _Bool z721_assgn7210;
  z721_assgn7210 = reg(z721_assgn721);
  _Bool z721_assgn7211;
  z721_assgn7211 = reg(z721_assgn7210);
  z309_assgn309 = reg(z721_assgn7211);
  _Bool z310_assgn310;
  _Bool z723_assgn723;
  z723_assgn723 = T2_0;
  _Bool z723_assgn7230;
  z723_assgn7230 = reg(z723_assgn723);
  _Bool z723_assgn7231;
  z723_assgn7231 = reg(z723_assgn7230);
  z310_assgn310 = reg(z723_assgn7231);
  z15_assgn15 = z310_assgn310 ^ z309_assgn309;
  *Y3_0 = reg(z15_assgn15);
  _Bool z17_assgn17;
  _Bool z314_assgn314;
  _Bool z729_assgn729;
  z729_assgn729 = x3_1_inp;
  _Bool z729_assgn7290;
  z729_assgn7290 = reg(z729_assgn729);
  _Bool z729_assgn7291;
  z729_assgn7291 = reg(z729_assgn7290);
  z314_assgn314 = reg(z729_assgn7291);
  z17_assgn17 = z314_assgn314 ^ Y0_11;
  *Y0_1 = reg(z17_assgn17);
  *Y1_1 = reg(L7_1 ^ Y1_11);
  _Bool z19_assgn19;
  _Bool z319_assgn319;
  _Bool z737_assgn737;
  z737_assgn737 = T2_1;
  _Bool z737_assgn7370;
  z737_assgn7370 = reg(z737_assgn737);
  _Bool z737_assgn7371;
  z737_assgn7371 = reg(z737_assgn7370);
  z319_assgn319 = reg(z737_assgn7371);
  z19_assgn19 = L11_1 ^ z319_assgn319;
  *Y2_1 = reg(z19_assgn19);
  _Bool z21_assgn21;
  _Bool z323_assgn323;
  _Bool z743_assgn743;
  z743_assgn743 = L5_1;
  _Bool z743_assgn7430;
  z743_assgn7430 = reg(z743_assgn743);
  _Bool z743_assgn7431;
  z743_assgn7431 = reg(z743_assgn7430);
  z323_assgn323 = reg(z743_assgn7431);
  _Bool z324_assgn324;
  _Bool z745_assgn745;
  z745_assgn745 = T2_1;
  _Bool z745_assgn7450;
  z745_assgn7450 = reg(z745_assgn745);
  _Bool z745_assgn7451;
  z745_assgn7451 = reg(z745_assgn7450);
  z324_assgn324 = reg(z745_assgn7451);
  z21_assgn21 = z324_assgn324 ^ z323_assgn323;
  *Y3_1 = reg(z21_assgn21);
}


