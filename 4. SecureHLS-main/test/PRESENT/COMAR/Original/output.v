module sbox(
    clk,
    x0_0,
    x1_0,
    x2_0,
    x3_0,
    x0_1,
    x1_1,
    x2_1,
    x3_1,
    r0,
    r1,
    r0_1,
    r1_1,
    r2_1,
    r3_1,
    Y0_0,
    Y1_0,
    Y2_0,
    Y3_0,
    Y0_1,
    Y1_1,
    Y2_1,
    Y3_1
);
//INPUTS
    input clk;
    input  x0_0;
    input  x1_0;
    input  x2_0;
    input  x3_0;
    input  x0_1;
    input  x1_1;
    input  x2_1;
    input  x3_1;
    input  r0;
    input  r1;
    input  r0_1;
    input  r1_1;
    input  r2_1;
    input  r3_1;
//OUTPUTS
    output reg  Y0_0;
    output reg  Y1_0;
    output reg  Y2_0;
    output reg  Y3_0;
    output reg  Y0_1;
    output reg  Y1_1;
    output reg  Y2_1;
    output reg  Y3_1;
//Intermediate values
    wire x0_0_inp;
    wire x1_0_inp;
    wire x2_0_inp;
    wire z333_assgn333;
    reg z333_assgn3330;
    reg z333_assgn3331;
    reg x3_0_inp;
    wire x0_1_inp;
    wire x1_1_inp;
    wire x2_1_inp;
    wire z341_assgn341;
    reg z341_assgn3410;
    reg z341_assgn3411;
    reg x3_1_inp;
    wire r0_inp;
    wire r1_inp;
    wire r0_1_inp;
    reg z3_assgn3;
    wire r1_1_inp;
    reg z5_assgn5;
    wire r2_1_inp;
    reg z7_assgn7;
    wire r3_1_inp;
    reg z9_assgn9;
    wire L0_0;
    wire L1_0;
    wire z367_assgn367;
    reg z367_assgn3670;
    reg z367_assgn3671;
    reg z367_assgn3672;
    reg z367_assgn3673;
    reg z367_assgn3674;
    reg z63_assgn63;
    wire z369_assgn369;
    reg z369_assgn3690;
    reg z369_assgn3691;
    reg z369_assgn3692;
    reg z369_assgn3693;
    reg z369_assgn3694;
    reg z64_assgn64;
    wire L8_0;
    wire z373_assgn373;
    reg z373_assgn3730;
    reg z373_assgn3731;
    reg z66_assgn66;
    wire L5_0;
    wire L0_1;
    wire L1_1;
    wire z381_assgn381;
    reg z381_assgn3810;
    reg z381_assgn3811;
    reg z381_assgn3812;
    reg z381_assgn3813;
    reg z381_assgn3814;
    reg z71_assgn71;
    wire z383_assgn383;
    reg z383_assgn3830;
    reg z383_assgn3831;
    reg z383_assgn3832;
    reg z383_assgn3833;
    reg z383_assgn3834;
    reg z72_assgn72;
    wire L8_1;
    wire z387_assgn387;
    reg z387_assgn3870;
    reg z387_assgn3871;
    reg z74_assgn74;
    wire L5_1;
    wire Q0_0;
    wire Q1_0;
    wire Q3_0;
    wire Q4_0;
    wire Q0_1;
    wire Q1_1;
    wire Q3_1;
    wire Q4_1;
    wire z407_assgn407;
    reg z407_assgn4070;
    reg z407_assgn4071;
    reg z91_assgn91;
    wire z409_assgn409;
    reg z409_assgn4090;
    reg z409_assgn4091;
    reg z92_assgn92;
    wire L2_0;
    wire z413_assgn413;
    reg z413_assgn4130;
    reg z413_assgn4131;
    reg z94_assgn94;
    wire L3_0;
    wire z417_assgn417;
    reg z417_assgn4170;
    reg z417_assgn4171;
    reg z95_assgn95;
    wire z419_assgn419;
    reg z419_assgn4190;
    reg z419_assgn4191;
    reg z96_assgn96;
    wire L2_1;
    wire z423_assgn423;
    reg z423_assgn4230;
    reg z423_assgn4231;
    reg z98_assgn98;
    wire L3_1;
    wire m0_comar0;
    wire m1_comar0;
    wire m2_comar0;
    wire m3_comar0;
    reg m0_comar0_reg;
    reg m1_comar0_reg;
    wire p2_comar0;
    reg m3_comar0_reg;
    reg m2_comar0_reg;
    wire p3_comar0;
    wire p1_comar0;
    wire p4_comar0;
    wire i0_comar0;
    wire i1_comar0;
    wire i2_comar0;
    wire i3_comar0;
    reg i1_comar0_reg;
    reg i2_comar0_reg;
    wire i1xori2_comar0;
    reg i0_comar0_reg;
    reg i3_comar0_reg;
    wire i0xori3_comar0;
    reg T0_0;
    wire z457_assgn457;
    reg z457_assgn4570;
    reg z457_assgn4571;
    reg z129_assgn129;
    wire y1_1_comar0;
    wire z461_assgn461;
    reg z461_assgn4610;
    reg z131_assgn131;
    wire y1_2_comar0;
    wire z465_assgn465;
    reg z465_assgn4650;
    reg z133_assgn133;
    wire y1_3_comar0;
    wire z469_assgn469;
    reg z469_assgn4690;
    reg z135_assgn135;
    wire y1_4_comar0;
    wire z473_assgn473;
    reg z473_assgn4730;
    reg z137_assgn137;
    wire T0_1;
    wire z1_assgn1;
    wire z479_assgn479;
    reg z479_assgn4790;
    reg z479_assgn4791;
    reg L10_0;
    wire z2_assgn2;
    wire z483_assgn483;
    reg z483_assgn4830;
    reg z483_assgn4831;
    reg L10_1;
    wire m0_comar1;
    wire m1_comar1;
    wire m2_comar1;
    wire m3_comar1;
    reg m0_comar1_reg;
    reg m1_comar1_reg;
    wire p2_comar1;
    reg m3_comar1_reg;
    reg m2_comar1_reg;
    wire p3_comar1;
    wire p1_comar1;
    wire p4_comar1;
    wire i0_comar1;
    wire i1_comar1;
    wire i2_comar1;
    wire i3_comar1;
    reg i1_comar1_reg;
    reg i2_comar1_reg;
    wire i1xori2_comar1;
    reg i0_comar1_reg;
    reg i3_comar1_reg;
    wire i0xori3_comar1;
    reg T2_0;
    wire z515_assgn515;
    reg z515_assgn5150;
    reg z515_assgn5151;
    reg z177_assgn177;
    wire y1_1_comar1;
    wire z519_assgn519;
    reg z519_assgn5190;
    reg z179_assgn179;
    wire y1_2_comar1;
    wire z523_assgn523;
    reg z523_assgn5230;
    reg z181_assgn181;
    wire y1_3_comar1;
    wire z527_assgn527;
    reg z527_assgn5270;
    reg z183_assgn183;
    wire y1_4_comar1;
    wire z531_assgn531;
    reg z531_assgn5310;
    reg z185_assgn185;
    wire T2_1;
    wire Q2_0;
    wire L4_0;
    wire Q7_0;
    wire Q6_0;
    wire Q2_1;
    wire L4_1;
    wire Q7_1;
    wire Q6_1;
    wire z551_assgn551;
    reg z551_assgn5510;
    reg z551_assgn5511;
    reg z203_assgn203;
    wire m0_comar2;
    wire z555_assgn555;
    reg z555_assgn5550;
    reg z555_assgn5551;
    reg z205_assgn205;
    wire m1_comar2;
    wire z559_assgn559;
    reg z559_assgn5590;
    reg z559_assgn5591;
    reg z207_assgn207;
    wire m2_comar2;
    wire z563_assgn563;
    reg z563_assgn5630;
    reg z563_assgn5631;
    reg z209_assgn209;
    wire m3_comar2;
    reg m0_comar2_reg;
    reg m1_comar2_reg;
    wire p2_comar2;
    reg m3_comar2_reg;
    reg m2_comar2_reg;
    wire p3_comar2;
    wire p1_comar2;
    wire p4_comar2;
    wire z575_assgn575;
    reg z575_assgn5750;
    reg z575_assgn5751;
    reg z219_assgn219;
    wire i0_comar2;
    wire z579_assgn579;
    reg z579_assgn5790;
    reg z579_assgn5791;
    reg z221_assgn221;
    wire i1_comar2;
    wire z583_assgn583;
    reg z583_assgn5830;
    reg z583_assgn5831;
    reg z223_assgn223;
    wire i2_comar2;
    wire z587_assgn587;
    reg z587_assgn5870;
    reg z587_assgn5871;
    reg z225_assgn225;
    wire i3_comar2;
    reg i1_comar2_reg;
    reg i2_comar2_reg;
    wire i1xori2_comar2;
    reg i0_comar2_reg;
    reg i3_comar2_reg;
    wire i0xori3_comar2;
    reg T1_0;
    wire z597_assgn597;
    reg z597_assgn5970;
    reg z597_assgn5971;
    reg z597_assgn5972;
    reg z597_assgn5973;
    reg z597_assgn5974;
    reg z233_assgn233;
    wire y1_1_comar2;
    wire z601_assgn601;
    reg z601_assgn6010;
    reg z601_assgn6011;
    reg z601_assgn6012;
    reg z601_assgn6013;
    reg z235_assgn235;
    wire y1_2_comar2;
    wire z605_assgn605;
    reg z605_assgn6050;
    reg z605_assgn6051;
    reg z605_assgn6052;
    reg z605_assgn6053;
    reg z237_assgn237;
    wire y1_3_comar2;
    wire z609_assgn609;
    reg z609_assgn6090;
    reg z609_assgn6091;
    reg z609_assgn6092;
    reg z609_assgn6093;
    reg z239_assgn239;
    wire y1_4_comar2;
    wire z613_assgn613;
    reg z613_assgn6130;
    reg z613_assgn6131;
    reg z613_assgn6132;
    reg z613_assgn6133;
    reg z241_assgn241;
    wire T1_1;
    wire z617_assgn617;
    reg z617_assgn6170;
    reg z617_assgn6171;
    reg z243_assgn243;
    wire m0_comar3;
    wire z621_assgn621;
    reg z621_assgn6210;
    reg z621_assgn6211;
    reg z245_assgn245;
    wire m1_comar3;
    wire z625_assgn625;
    reg z625_assgn6250;
    reg z625_assgn6251;
    reg z247_assgn247;
    wire m2_comar3;
    wire z629_assgn629;
    reg z629_assgn6290;
    reg z629_assgn6291;
    reg z249_assgn249;
    wire m3_comar3;
    reg m0_comar3_reg;
    reg m1_comar3_reg;
    wire p2_comar3;
    reg m3_comar3_reg;
    reg m2_comar3_reg;
    wire p3_comar3;
    wire p1_comar3;
    wire p4_comar3;
    wire z641_assgn641;
    reg z641_assgn6410;
    reg z641_assgn6411;
    reg z259_assgn259;
    wire i0_comar3;
    wire z645_assgn645;
    reg z645_assgn6450;
    reg z645_assgn6451;
    reg z261_assgn261;
    wire i1_comar3;
    wire z649_assgn649;
    reg z649_assgn6490;
    reg z649_assgn6491;
    reg z263_assgn263;
    wire i2_comar3;
    wire z653_assgn653;
    reg z653_assgn6530;
    reg z653_assgn6531;
    reg z265_assgn265;
    wire i3_comar3;
    reg i1_comar3_reg;
    reg i2_comar3_reg;
    wire i1xori2_comar3;
    reg i0_comar3_reg;
    reg i3_comar3_reg;
    wire i0xori3_comar3;
    reg T3_0;
    wire z663_assgn663;
    reg z663_assgn6630;
    reg z663_assgn6631;
    reg z663_assgn6632;
    reg z663_assgn6633;
    reg z663_assgn6634;
    reg z273_assgn273;
    wire y1_1_comar3;
    wire z667_assgn667;
    reg z667_assgn6670;
    reg z667_assgn6671;
    reg z667_assgn6672;
    reg z667_assgn6673;
    reg z275_assgn275;
    wire y1_2_comar3;
    wire z671_assgn671;
    reg z671_assgn6710;
    reg z671_assgn6711;
    reg z671_assgn6712;
    reg z671_assgn6713;
    reg z277_assgn277;
    wire y1_3_comar3;
    wire z675_assgn675;
    reg z675_assgn6750;
    reg z675_assgn6751;
    reg z675_assgn6752;
    reg z675_assgn6753;
    reg z279_assgn279;
    wire y1_4_comar3;
    wire z679_assgn679;
    reg z679_assgn6790;
    reg z679_assgn6791;
    reg z679_assgn6792;
    reg z679_assgn6793;
    reg z281_assgn281;
    wire T3_1;
    wire z683_assgn683;
    reg z683_assgn6830;
    reg z683_assgn6831;
    reg z284_assgn284;
    wire L7_0;
    wire L11_0;
    wire z689_assgn689;
    reg z689_assgn6890;
    reg z689_assgn6891;
    reg z288_assgn288;
    wire L7_1;
    wire L11_1;
    wire z695_assgn695;
    reg z695_assgn6950;
    reg z695_assgn6951;
    reg z291_assgn291;
    wire Y0_01;
    wire Y1_01;
    wire z701_assgn701;
    reg z701_assgn7010;
    reg z701_assgn7011;
    reg z295_assgn295;
    wire Y0_11;
    wire Y1_11;
    wire z707_assgn707;
    reg z707_assgn7070;
    reg z707_assgn7071;
    reg z300_assgn300;
    wire z11_assgn11;
    wire z715_assgn715;
    reg z715_assgn7150;
    reg z715_assgn7151;
    reg z305_assgn305;
    wire z13_assgn13;
    wire z721_assgn721;
    reg z721_assgn7210;
    reg z721_assgn7211;
    reg z309_assgn309;
    wire z723_assgn723;
    reg z723_assgn7230;
    reg z723_assgn7231;
    reg z310_assgn310;
    wire z15_assgn15;
    wire z729_assgn729;
    reg z729_assgn7290;
    reg z729_assgn7291;
    reg z314_assgn314;
    wire z17_assgn17;
    wire z737_assgn737;
    reg z737_assgn7370;
    reg z737_assgn7371;
    reg z319_assgn319;
    wire z19_assgn19;
    wire z743_assgn743;
    reg z743_assgn7430;
    reg z743_assgn7431;
    reg z323_assgn323;
    wire z745_assgn745;
    reg z745_assgn7450;
    reg z745_assgn7451;
    reg z324_assgn324;
    wire z21_assgn21;

    assign x0_0_inp = x0_0;
    assign x1_0_inp = x1_0;
    assign x2_0_inp = x2_0;
    assign z333_assgn333 = x3_0;
    assign x0_1_inp = x0_1;
    assign x1_1_inp = x1_1;
    assign x2_1_inp = x2_1;
    assign z341_assgn341 = x3_1;
    assign r0_inp = r0;
    assign r1_inp = r1;
    assign r0_1_inp = r0_1;
    assign r1_1_inp = r1_1;
    assign r2_1_inp = r2_1;
    assign r3_1_inp = r3_1;
    assign L0_0 = (x1_0_inp ^ x2_0_inp);
    assign L1_0 = (x0_0_inp ^ x1_0_inp);
    assign z367_assgn367 = x0_0_inp;
    assign z369_assgn369 = x2_0_inp;
    assign L8_0 = (z64_assgn64 ^ z63_assgn63);
    assign z373_assgn373 = x0_0_inp;
    assign L5_0 = (z66_assgn66 ^ x3_0_inp);
    assign L0_1 = (x1_1_inp ^ x2_1_inp);
    assign L1_1 = (x0_1_inp ^ x1_1_inp);
    assign z381_assgn381 = x0_1_inp;
    assign z383_assgn383 = x2_1_inp;
    assign L8_1 = (z72_assgn72 ^ z71_assgn71);
    assign z387_assgn387 = x0_1_inp;
    assign L5_1 = (z74_assgn74 ^ x3_1_inp);
    assign Q0_0 = !L0_0;
    assign Q1_0 = !L1_0;
    assign Q3_0 = !x3_0_inp;
    assign Q4_0 = !x2_0_inp;
    assign Q0_1 = !L0_1;
    assign Q1_1 = !L1_1;
    assign Q3_1 = !x3_1_inp;
    assign Q4_1 = !x2_1_inp;
    assign z407_assgn407 = x2_0_inp;
    assign z409_assgn409 = Q1_0;
    assign L2_0 = (z92_assgn92 ^ z91_assgn91);
    assign z413_assgn413 = Q0_0;
    assign L3_0 = (z94_assgn94 ^ x3_0_inp);
    assign z417_assgn417 = x2_1_inp;
    assign z419_assgn419 = Q1_1;
    assign L2_1 = (z96_assgn96 ^ z95_assgn95);
    assign z423_assgn423 = Q0_1;
    assign L3_1 = (z98_assgn98 ^ x3_1_inp);
    assign m0_comar0 = (Q0_0 ^ r0_inp);
    assign m1_comar0 = (Q1_1 ^ r1_inp);
    assign m2_comar0 = (Q1_0 ^ r1_inp);
    assign m3_comar0 = (Q0_1 ^ r0_inp);
    assign p2_comar0 = (m0_comar0_reg & m1_comar0_reg);
    assign p3_comar0 = (m3_comar0_reg & m2_comar0_reg);
    assign p1_comar0 = (m0_comar0_reg & m2_comar0_reg);
    assign p4_comar0 = (m3_comar0_reg & m1_comar0_reg);
    assign i0_comar0 = (p1_comar0 ^ z3_assgn3);
    assign i1_comar0 = (p2_comar0 ^ z5_assgn5);
    assign i2_comar0 = (p3_comar0 ^ z7_assgn7);
    assign i3_comar0 = (p4_comar0 ^ z9_assgn9);
    assign i1xori2_comar0 = (i1_comar0_reg ^ i2_comar0_reg);
    assign i0xori3_comar0 = (i0_comar0_reg ^ i3_comar0_reg);
    assign z457_assgn457 = r0_inp;
    assign y1_1_comar0 = (r0_inp ^ z129_assgn129);
    assign z461_assgn461 = z3_assgn3;
    assign y1_2_comar0 = (y1_1_comar0 ^ z131_assgn131);
    assign z465_assgn465 = z5_assgn5;
    assign y1_3_comar0 = (y1_2_comar0 ^ z133_assgn133);
    assign z469_assgn469 = z7_assgn7;
    assign y1_4_comar0 = (y1_3_comar0 ^ z135_assgn135);
    assign z473_assgn473 = z9_assgn9;
    assign T0_1 = (y1_4_comar0 ^ z137_assgn137);
    assign z1_assgn1 = !L2_0;
    assign z479_assgn479 = z1_assgn1;
    assign z2_assgn2 = !L2_1;
    assign z483_assgn483 = z2_assgn2;
    assign m0_comar1 = (x1_0_inp ^ r0_inp);
    assign m1_comar1 = (Q4_1 ^ r1_inp);
    assign m2_comar1 = (Q4_0 ^ r1_inp);
    assign m3_comar1 = (x1_1_inp ^ r0_inp);
    assign p2_comar1 = (m0_comar1_reg & m1_comar1_reg);
    assign p3_comar1 = (m3_comar1_reg & m2_comar1_reg);
    assign p1_comar1 = (m0_comar1_reg & m2_comar1_reg);
    assign p4_comar1 = (m3_comar1_reg & m1_comar1_reg);
    assign i0_comar1 = (p1_comar1 ^ z3_assgn3);
    assign i1_comar1 = (p2_comar1 ^ z5_assgn5);
    assign i2_comar1 = (p3_comar1 ^ z7_assgn7);
    assign i3_comar1 = (p4_comar1 ^ z9_assgn9);
    assign i1xori2_comar1 = (i1_comar1_reg ^ i2_comar1_reg);
    assign i0xori3_comar1 = (i0_comar1_reg ^ i3_comar1_reg);
    assign z515_assgn515 = r0_inp;
    assign y1_1_comar1 = (r0_inp ^ z177_assgn177);
    assign z519_assgn519 = z3_assgn3;
    assign y1_2_comar1 = (y1_1_comar1 ^ z179_assgn179);
    assign z523_assgn523 = z5_assgn5;
    assign y1_3_comar1 = (y1_2_comar1 ^ z181_assgn181);
    assign z527_assgn527 = z7_assgn7;
    assign y1_4_comar1 = (y1_3_comar1 ^ z183_assgn183);
    assign z531_assgn531 = z9_assgn9;
    assign T2_1 = (y1_4_comar1 ^ z185_assgn185);
    assign Q2_0 = (T0_0 ^ L2_0);
    assign L4_0 = (T0_0 ^ T2_0);
    assign Q7_0 = (T0_0 ^ L5_0);
    assign Q6_0 = (L4_0 ^ L3_0);
    assign Q2_1 = (T0_1 ^ L2_1);
    assign L4_1 = (T0_1 ^ T2_1);
    assign Q7_1 = (T0_1 ^ L5_1);
    assign Q6_1 = (L4_1 ^ L3_1);
    assign z551_assgn551 = r0_inp;
    assign m0_comar2 = (Q2_0 ^ z203_assgn203);
    assign z555_assgn555 = r1_inp;
    assign m1_comar2 = (Q3_1 ^ z205_assgn205);
    assign z559_assgn559 = r1_inp;
    assign m2_comar2 = (Q3_0 ^ z207_assgn207);
    assign z563_assgn563 = r0_inp;
    assign m3_comar2 = (Q2_1 ^ z209_assgn209);
    assign p2_comar2 = (m0_comar2_reg & m1_comar2_reg);
    assign p3_comar2 = (m3_comar2_reg & m2_comar2_reg);
    assign p1_comar2 = (m0_comar2_reg & m2_comar2_reg);
    assign p4_comar2 = (m3_comar2_reg & m1_comar2_reg);
    assign z575_assgn575 = z3_assgn3;
    assign i0_comar2 = (p1_comar2 ^ z219_assgn219);
    assign z579_assgn579 = z5_assgn5;
    assign i1_comar2 = (p2_comar2 ^ z221_assgn221);
    assign z583_assgn583 = z7_assgn7;
    assign i2_comar2 = (p3_comar2 ^ z223_assgn223);
    assign z587_assgn587 = z9_assgn9;
    assign i3_comar2 = (p4_comar2 ^ z225_assgn225);
    assign i1xori2_comar2 = (i1_comar2_reg ^ i2_comar2_reg);
    assign i0xori3_comar2 = (i0_comar2_reg ^ i3_comar2_reg);
    assign z597_assgn597 = r0_inp;
    assign y1_1_comar2 = (r0_inp ^ z233_assgn233);
    assign z601_assgn601 = z3_assgn3;
    assign y1_2_comar2 = (y1_1_comar2 ^ z235_assgn235);
    assign z605_assgn605 = z5_assgn5;
    assign y1_3_comar2 = (y1_2_comar2 ^ z237_assgn237);
    assign z609_assgn609 = z7_assgn7;
    assign y1_4_comar2 = (y1_3_comar2 ^ z239_assgn239);
    assign z613_assgn613 = z9_assgn9;
    assign T1_1 = (y1_4_comar2 ^ z241_assgn241);
    assign z617_assgn617 = r0_inp;
    assign m0_comar3 = (Q6_0 ^ z243_assgn243);
    assign z621_assgn621 = r1_inp;
    assign m1_comar3 = (Q7_1 ^ z245_assgn245);
    assign z625_assgn625 = r1_inp;
    assign m2_comar3 = (Q7_0 ^ z247_assgn247);
    assign z629_assgn629 = r0_inp;
    assign m3_comar3 = (Q6_1 ^ z249_assgn249);
    assign p2_comar3 = (m0_comar3_reg & m1_comar3_reg);
    assign p3_comar3 = (m3_comar3_reg & m2_comar3_reg);
    assign p1_comar3 = (m0_comar3_reg & m2_comar3_reg);
    assign p4_comar3 = (m3_comar3_reg & m1_comar3_reg);
    assign z641_assgn641 = z3_assgn3;
    assign i0_comar3 = (p1_comar3 ^ z259_assgn259);
    assign z645_assgn645 = z5_assgn5;
    assign i1_comar3 = (p2_comar3 ^ z261_assgn261);
    assign z649_assgn649 = z7_assgn7;
    assign i2_comar3 = (p3_comar3 ^ z263_assgn263);
    assign z653_assgn653 = z9_assgn9;
    assign i3_comar3 = (p4_comar3 ^ z265_assgn265);
    assign i1xori2_comar3 = (i1_comar3_reg ^ i2_comar3_reg);
    assign i0xori3_comar3 = (i0_comar3_reg ^ i3_comar3_reg);
    assign z663_assgn663 = r0_inp;
    assign y1_1_comar3 = (r0_inp ^ z273_assgn273);
    assign z667_assgn667 = z3_assgn3;
    assign y1_2_comar3 = (y1_1_comar3 ^ z275_assgn275);
    assign z671_assgn671 = z5_assgn5;
    assign y1_3_comar3 = (y1_2_comar3 ^ z277_assgn277);
    assign z675_assgn675 = z7_assgn7;
    assign y1_4_comar3 = (y1_3_comar3 ^ z279_assgn279);
    assign z679_assgn679 = z9_assgn9;
    assign T3_1 = (y1_4_comar3 ^ z281_assgn281);
    assign z683_assgn683 = T0_0;
    assign L7_0 = (z284_assgn284 ^ T1_0);
    assign L11_0 = (T1_0 ^ L10_0);
    assign z689_assgn689 = T0_1;
    assign L7_1 = (z288_assgn288 ^ T1_1);
    assign L11_1 = (T1_1 ^ L10_1);
    assign z695_assgn695 = T2_0;
    assign Y0_01 = (L7_0 ^ z291_assgn291);
    assign Y1_01 = (L8_0 ^ T3_0);
    assign z701_assgn701 = T2_1;
    assign Y0_11 = (L7_1 ^ z295_assgn295);
    assign Y1_11 = (L8_1 ^ T3_1);
    assign z707_assgn707 = x3_0_inp;
    assign z11_assgn11 = (z300_assgn300 ^ Y0_01);
    assign z715_assgn715 = T2_0;
    assign z13_assgn13 = (L11_0 ^ z305_assgn305);
    assign z721_assgn721 = L5_0;
    assign z723_assgn723 = T2_0;
    assign z15_assgn15 = (z310_assgn310 ^ z309_assgn309);
    assign z729_assgn729 = x3_1_inp;
    assign z17_assgn17 = (z314_assgn314 ^ Y0_11);
    assign z737_assgn737 = T2_1;
    assign z19_assgn19 = (L11_1 ^ z319_assgn319);
    assign z743_assgn743 = L5_1;
    assign z745_assgn745 = T2_1;
    assign z21_assgn21 = (z324_assgn324 ^ z323_assgn323);

    always @(posedge clk) begin
        z333_assgn3330 <= z333_assgn333;
        z333_assgn3331 <= z333_assgn3330;
        x3_0_inp <= z333_assgn3331;
        z341_assgn3410 <= z341_assgn341;
        z341_assgn3411 <= z341_assgn3410;
        x3_1_inp <= z341_assgn3411;
        z3_assgn3 <= r0_1_inp;
        z5_assgn5 <= r1_1_inp;
        z7_assgn7 <= r2_1_inp;
        z9_assgn9 <= r3_1_inp;
        z367_assgn3670 <= z367_assgn367;
        z367_assgn3671 <= z367_assgn3670;
        z367_assgn3672 <= z367_assgn3671;
        z367_assgn3673 <= z367_assgn3672;
        z367_assgn3674 <= z367_assgn3673;
        z63_assgn63 <= z367_assgn3674;
        z369_assgn3690 <= z369_assgn369;
        z369_assgn3691 <= z369_assgn3690;
        z369_assgn3692 <= z369_assgn3691;
        z369_assgn3693 <= z369_assgn3692;
        z369_assgn3694 <= z369_assgn3693;
        z64_assgn64 <= z369_assgn3694;
        z373_assgn3730 <= z373_assgn373;
        z373_assgn3731 <= z373_assgn3730;
        z66_assgn66 <= z373_assgn3731;
        z381_assgn3810 <= z381_assgn381;
        z381_assgn3811 <= z381_assgn3810;
        z381_assgn3812 <= z381_assgn3811;
        z381_assgn3813 <= z381_assgn3812;
        z381_assgn3814 <= z381_assgn3813;
        z71_assgn71 <= z381_assgn3814;
        z383_assgn3830 <= z383_assgn383;
        z383_assgn3831 <= z383_assgn3830;
        z383_assgn3832 <= z383_assgn3831;
        z383_assgn3833 <= z383_assgn3832;
        z383_assgn3834 <= z383_assgn3833;
        z72_assgn72 <= z383_assgn3834;
        z387_assgn3870 <= z387_assgn387;
        z387_assgn3871 <= z387_assgn3870;
        z74_assgn74 <= z387_assgn3871;
        z407_assgn4070 <= z407_assgn407;
        z407_assgn4071 <= z407_assgn4070;
        z91_assgn91 <= z407_assgn4071;
        z409_assgn4090 <= z409_assgn409;
        z409_assgn4091 <= z409_assgn4090;
        z92_assgn92 <= z409_assgn4091;
        z413_assgn4130 <= z413_assgn413;
        z413_assgn4131 <= z413_assgn4130;
        z94_assgn94 <= z413_assgn4131;
        z417_assgn4170 <= z417_assgn417;
        z417_assgn4171 <= z417_assgn4170;
        z95_assgn95 <= z417_assgn4171;
        z419_assgn4190 <= z419_assgn419;
        z419_assgn4191 <= z419_assgn4190;
        z96_assgn96 <= z419_assgn4191;
        z423_assgn4230 <= z423_assgn423;
        z423_assgn4231 <= z423_assgn4230;
        z98_assgn98 <= z423_assgn4231;
        m0_comar0_reg <= m0_comar0;
        m1_comar0_reg <= m1_comar0;
        m3_comar0_reg <= m3_comar0;
        m2_comar0_reg <= m2_comar0;
        i1_comar0_reg <= i1_comar0;
        i2_comar0_reg <= i2_comar0;
        i0_comar0_reg <= i0_comar0;
        i3_comar0_reg <= i3_comar0;
        T0_0 <= (i1xori2_comar0 ^ i0xori3_comar0);
        z457_assgn4570 <= z457_assgn457;
        z457_assgn4571 <= z457_assgn4570;
        z129_assgn129 <= z457_assgn4571;
        z461_assgn4610 <= z461_assgn461;
        z131_assgn131 <= z461_assgn4610;
        z465_assgn4650 <= z465_assgn465;
        z133_assgn133 <= z465_assgn4650;
        z469_assgn4690 <= z469_assgn469;
        z135_assgn135 <= z469_assgn4690;
        z473_assgn4730 <= z473_assgn473;
        z137_assgn137 <= z473_assgn4730;
        z479_assgn4790 <= z479_assgn479;
        z479_assgn4791 <= z479_assgn4790;
        L10_0 <= z479_assgn4791;
        z483_assgn4830 <= z483_assgn483;
        z483_assgn4831 <= z483_assgn4830;
        L10_1 <= z483_assgn4831;
        m0_comar1_reg <= m0_comar1;
        m1_comar1_reg <= m1_comar1;
        m3_comar1_reg <= m3_comar1;
        m2_comar1_reg <= m2_comar1;
        i1_comar1_reg <= i1_comar1;
        i2_comar1_reg <= i2_comar1;
        i0_comar1_reg <= i0_comar1;
        i3_comar1_reg <= i3_comar1;
        T2_0 <= (i1xori2_comar1 ^ i0xori3_comar1);
        z515_assgn5150 <= z515_assgn515;
        z515_assgn5151 <= z515_assgn5150;
        z177_assgn177 <= z515_assgn5151;
        z519_assgn5190 <= z519_assgn519;
        z179_assgn179 <= z519_assgn5190;
        z523_assgn5230 <= z523_assgn523;
        z181_assgn181 <= z523_assgn5230;
        z527_assgn5270 <= z527_assgn527;
        z183_assgn183 <= z527_assgn5270;
        z531_assgn5310 <= z531_assgn531;
        z185_assgn185 <= z531_assgn5310;
        z551_assgn5510 <= z551_assgn551;
        z551_assgn5511 <= z551_assgn5510;
        z203_assgn203 <= z551_assgn5511;
        z555_assgn5550 <= z555_assgn555;
        z555_assgn5551 <= z555_assgn5550;
        z205_assgn205 <= z555_assgn5551;
        z559_assgn5590 <= z559_assgn559;
        z559_assgn5591 <= z559_assgn5590;
        z207_assgn207 <= z559_assgn5591;
        z563_assgn5630 <= z563_assgn563;
        z563_assgn5631 <= z563_assgn5630;
        z209_assgn209 <= z563_assgn5631;
        m0_comar2_reg <= m0_comar2;
        m1_comar2_reg <= m1_comar2;
        m3_comar2_reg <= m3_comar2;
        m2_comar2_reg <= m2_comar2;
        z575_assgn5750 <= z575_assgn575;
        z575_assgn5751 <= z575_assgn5750;
        z219_assgn219 <= z575_assgn5751;
        z579_assgn5790 <= z579_assgn579;
        z579_assgn5791 <= z579_assgn5790;
        z221_assgn221 <= z579_assgn5791;
        z583_assgn5830 <= z583_assgn583;
        z583_assgn5831 <= z583_assgn5830;
        z223_assgn223 <= z583_assgn5831;
        z587_assgn5870 <= z587_assgn587;
        z587_assgn5871 <= z587_assgn5870;
        z225_assgn225 <= z587_assgn5871;
        i1_comar2_reg <= i1_comar2;
        i2_comar2_reg <= i2_comar2;
        i0_comar2_reg <= i0_comar2;
        i3_comar2_reg <= i3_comar2;
        T1_0 <= (i1xori2_comar2 ^ i0xori3_comar2);
        z597_assgn5970 <= z597_assgn597;
        z597_assgn5971 <= z597_assgn5970;
        z597_assgn5972 <= z597_assgn5971;
        z597_assgn5973 <= z597_assgn5972;
        z597_assgn5974 <= z597_assgn5973;
        z233_assgn233 <= z597_assgn5974;
        z601_assgn6010 <= z601_assgn601;
        z601_assgn6011 <= z601_assgn6010;
        z601_assgn6012 <= z601_assgn6011;
        z601_assgn6013 <= z601_assgn6012;
        z235_assgn235 <= z601_assgn6013;
        z605_assgn6050 <= z605_assgn605;
        z605_assgn6051 <= z605_assgn6050;
        z605_assgn6052 <= z605_assgn6051;
        z605_assgn6053 <= z605_assgn6052;
        z237_assgn237 <= z605_assgn6053;
        z609_assgn6090 <= z609_assgn609;
        z609_assgn6091 <= z609_assgn6090;
        z609_assgn6092 <= z609_assgn6091;
        z609_assgn6093 <= z609_assgn6092;
        z239_assgn239 <= z609_assgn6093;
        z613_assgn6130 <= z613_assgn613;
        z613_assgn6131 <= z613_assgn6130;
        z613_assgn6132 <= z613_assgn6131;
        z613_assgn6133 <= z613_assgn6132;
        z241_assgn241 <= z613_assgn6133;
        z617_assgn6170 <= z617_assgn617;
        z617_assgn6171 <= z617_assgn6170;
        z243_assgn243 <= z617_assgn6171;
        z621_assgn6210 <= z621_assgn621;
        z621_assgn6211 <= z621_assgn6210;
        z245_assgn245 <= z621_assgn6211;
        z625_assgn6250 <= z625_assgn625;
        z625_assgn6251 <= z625_assgn6250;
        z247_assgn247 <= z625_assgn6251;
        z629_assgn6290 <= z629_assgn629;
        z629_assgn6291 <= z629_assgn6290;
        z249_assgn249 <= z629_assgn6291;
        m0_comar3_reg <= m0_comar3;
        m1_comar3_reg <= m1_comar3;
        m3_comar3_reg <= m3_comar3;
        m2_comar3_reg <= m2_comar3;
        z641_assgn6410 <= z641_assgn641;
        z641_assgn6411 <= z641_assgn6410;
        z259_assgn259 <= z641_assgn6411;
        z645_assgn6450 <= z645_assgn645;
        z645_assgn6451 <= z645_assgn6450;
        z261_assgn261 <= z645_assgn6451;
        z649_assgn6490 <= z649_assgn649;
        z649_assgn6491 <= z649_assgn6490;
        z263_assgn263 <= z649_assgn6491;
        z653_assgn6530 <= z653_assgn653;
        z653_assgn6531 <= z653_assgn6530;
        z265_assgn265 <= z653_assgn6531;
        i1_comar3_reg <= i1_comar3;
        i2_comar3_reg <= i2_comar3;
        i0_comar3_reg <= i0_comar3;
        i3_comar3_reg <= i3_comar3;
        T3_0 <= (i1xori2_comar3 ^ i0xori3_comar3);
        z663_assgn6630 <= z663_assgn663;
        z663_assgn6631 <= z663_assgn6630;
        z663_assgn6632 <= z663_assgn6631;
        z663_assgn6633 <= z663_assgn6632;
        z663_assgn6634 <= z663_assgn6633;
        z273_assgn273 <= z663_assgn6634;
        z667_assgn6670 <= z667_assgn667;
        z667_assgn6671 <= z667_assgn6670;
        z667_assgn6672 <= z667_assgn6671;
        z667_assgn6673 <= z667_assgn6672;
        z275_assgn275 <= z667_assgn6673;
        z671_assgn6710 <= z671_assgn671;
        z671_assgn6711 <= z671_assgn6710;
        z671_assgn6712 <= z671_assgn6711;
        z671_assgn6713 <= z671_assgn6712;
        z277_assgn277 <= z671_assgn6713;
        z675_assgn6750 <= z675_assgn675;
        z675_assgn6751 <= z675_assgn6750;
        z675_assgn6752 <= z675_assgn6751;
        z675_assgn6753 <= z675_assgn6752;
        z279_assgn279 <= z675_assgn6753;
        z679_assgn6790 <= z679_assgn679;
        z679_assgn6791 <= z679_assgn6790;
        z679_assgn6792 <= z679_assgn6791;
        z679_assgn6793 <= z679_assgn6792;
        z281_assgn281 <= z679_assgn6793;
        z683_assgn6830 <= z683_assgn683;
        z683_assgn6831 <= z683_assgn6830;
        z284_assgn284 <= z683_assgn6831;
        z689_assgn6890 <= z689_assgn689;
        z689_assgn6891 <= z689_assgn6890;
        z288_assgn288 <= z689_assgn6891;
        z695_assgn6950 <= z695_assgn695;
        z695_assgn6951 <= z695_assgn6950;
        z291_assgn291 <= z695_assgn6951;
        z701_assgn7010 <= z701_assgn701;
        z701_assgn7011 <= z701_assgn7010;
        z295_assgn295 <= z701_assgn7011;
        z707_assgn7070 <= z707_assgn707;
        z707_assgn7071 <= z707_assgn7070;
        z300_assgn300 <= z707_assgn7071;
        Y0_0 <= z11_assgn11;
        Y1_0 <= (L7_0 ^ Y1_01);
        z715_assgn7150 <= z715_assgn715;
        z715_assgn7151 <= z715_assgn7150;
        z305_assgn305 <= z715_assgn7151;
        Y2_0 <= z13_assgn13;
        z721_assgn7210 <= z721_assgn721;
        z721_assgn7211 <= z721_assgn7210;
        z309_assgn309 <= z721_assgn7211;
        z723_assgn7230 <= z723_assgn723;
        z723_assgn7231 <= z723_assgn7230;
        z310_assgn310 <= z723_assgn7231;
        Y3_0 <= z15_assgn15;
        z729_assgn7290 <= z729_assgn729;
        z729_assgn7291 <= z729_assgn7290;
        z314_assgn314 <= z729_assgn7291;
        Y0_1 <= z17_assgn17;
        Y1_1 <= (L7_1 ^ Y1_11);
        z737_assgn7370 <= z737_assgn737;
        z737_assgn7371 <= z737_assgn7370;
        z319_assgn319 <= z737_assgn7371;
        Y2_1 <= z19_assgn19;
        z743_assgn7430 <= z743_assgn743;
        z743_assgn7431 <= z743_assgn7430;
        z323_assgn323 <= z743_assgn7431;
        z745_assgn7450 <= z745_assgn745;
        z745_assgn7451 <= z745_assgn7450;
        z324_assgn324 <= z745_assgn7451;
        Y3_1 <= z21_assgn21;
    end

endmodule

