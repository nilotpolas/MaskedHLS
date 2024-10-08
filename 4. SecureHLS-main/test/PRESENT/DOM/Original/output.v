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
    r,
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
    input  r;
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
reg z3_assgn3;
    reg z5_assgn5;
    reg z239_assgn2390;
    reg z45_assgn45;
    reg z241_assgn2410;
    reg z46_assgn46;
    reg x0_0_inp_reg;
    reg z251_assgn2510;
    reg z53_assgn53;
    reg z253_assgn2530;
    reg z54_assgn54;
    reg x0_1_inp_reg;
    reg Q1_0_reg;
    reg x2_0_inp_reg;
    reg Q0_0_reg;
    reg Q1_1_reg;
    reg x2_1_inp_reg;
    reg Q0_1_reg;
    reg i1_domand0_reg;
    reg i2_domand0_reg;
    reg L10_0;
    reg L10_1;
    reg x1_0_inp_reg;
    reg Q4_0_reg;
    reg x1_1_inp_reg;
    reg Q4_1_reg;
    reg i1_domand1_reg;
    reg i2_domand1_reg;
    reg r_inp_reg;
    reg Q2_0_reg;
    reg Q3_0_reg;
    reg Q2_1_reg;
    reg Q3_1_reg;
    reg i1_domand2_reg;
    reg i2_domand2_reg;
    reg Q6_0_reg;
    reg Q7_0_reg;
    reg i1_domand3_reg;
    reg Q6_1_reg;
    reg Q7_1_reg;
    reg i2_domand3_reg;
    reg T0_0_reg;
    reg T0_1_reg;
    reg T2_0_reg;
    reg T2_1_reg;
    reg z3_assgn3_reg;
    reg L5_0_reg;
    reg z5_assgn5_reg;
    reg L5_1_reg;
    wire x0_0_inp;
    wire x1_0_inp;
    wire x2_0_inp;
    wire x3_0_inp;
    
    wire x0_1_inp;
    wire x1_1_inp;
    wire x2_1_inp;
    wire x3_1_inp;
    
    wire r_inp;
    wire L0_0;
    wire L1_0;
    wire z239_assgn239;
    
    wire z241_assgn241;
    
    wire L8_0;
    
    wire L5_0;
    wire L0_1;
    wire L1_1;
    wire z251_assgn251;
    wire z253_assgn253;
    wire L8_1;
    wire L5_1;
    wire Q0_0;
    wire Q1_0;
    wire Q3_0;
    wire Q4_0;
    wire Q0_1;
    wire Q1_1;
    wire Q3_1;
    wire Q4_1;
    wire L2_0;
    wire L3_0;
    wire L2_1;
    wire L3_1;
    wire p2_domand0;
    wire i1_domand0;
    wire p3_domand0;
    wire i2_domand0;
    wire p1_domand0;
    wire p4_domand0;
    wire T0_0;
    wire T0_1;
    wire z1_assgn1;
    wire z2_assgn2;
    wire p2_domand1;
    wire i1_domand1;
    wire p3_domand1;
    wire i2_domand1;
    wire p1_domand1;
    wire p4_domand1;
    wire T2_0;
    wire T2_1;
    wire Q2_0;
    wire L4_0;
    wire Q7_0;
    wire Q6_0;
    wire Q2_1;
    wire L4_1;
    wire Q7_1;
    wire Q6_1;
    wire p2_domand2;
    
    wire i1_domand2;
    wire p3_domand2;
    wire i2_domand2;
    
    wire p1_domand2;
    
    wire p4_domand2;
    
    wire T1_0;
    
    wire T1_1;
    wire p2_domand3;
    wire i1_domand3;
    wire p3_domand3;
    wire i2_domand3;
    
    wire p1_domand3;
    
    wire p4_domand3;
    wire T3_0;
    
    wire T3_1;
    
    wire L7_0;
    wire L11_0;
    
    wire L7_1;
    wire L11_1;
    
    wire Y0_01;
    wire Y1_01;
    
    wire Y0_11;
    wire Y1_11;
    
    wire z7_assgn7;
    wire z9_assgn9;
    
    wire z11_assgn11;
    
    wire z13_assgn13;
    wire z15_assgn15;
    
    wire z17_assgn17;

    assign x0_0_inp = x0_0;
    assign x1_0_inp = x1_0;
    assign x2_0_inp = x2_0;
    assign x3_0_inp = x3_0;
    assign x0_1_inp = x0_1;
    assign x1_1_inp = x1_1;
    assign x2_1_inp = x2_1;
    assign x3_1_inp = x3_1;
    assign r_inp = r;
    assign L0_0 = (x1_0_inp ^ x2_0_inp);
    assign L1_0 = (x0_0_inp ^ x1_0_inp);
    assign z239_assgn239 = x0_0_inp;
    assign z241_assgn241 = x2_0_inp;
    assign L8_0 = (z46_assgn46 ^ z45_assgn45);
    assign L5_0 = (x0_0_inp_reg ^ z3_assgn3);
    assign L0_1 = (x1_1_inp ^ x2_1_inp);
    assign L1_1 = (x0_1_inp ^ x1_1_inp);
    assign z251_assgn251 = x0_1_inp;
    assign z253_assgn253 = x2_1_inp;
    assign L8_1 = (z54_assgn54 ^ z53_assgn53);
    assign L5_1 = (x0_1_inp_reg ^ z5_assgn5);
    assign Q0_0 = !L0_0;
    assign Q1_0 = !L1_0;
    assign Q3_0 = !z3_assgn3;
    assign Q4_0 = !x2_0_inp;
    assign Q0_1 = !L0_1;
    assign Q1_1 = !L1_1;
    assign Q3_1 = !z5_assgn5;
    assign Q4_1 = !x2_1_inp;
    assign L2_0 = (Q1_0_reg ^ x2_0_inp_reg);
    assign L3_0 = (Q0_0_reg ^ z3_assgn3);
    assign L2_1 = (Q1_1_reg ^ x2_1_inp_reg);
    assign L3_1 = (Q0_1_reg ^ z5_assgn5);
    assign p2_domand0 = (Q0_0 & Q1_1);
    assign i1_domand0 = (p2_domand0 ^ r_inp);
    assign p3_domand0 = (Q0_1 & Q1_0);
    assign i2_domand0 = (p3_domand0 ^ r_inp);
    assign p1_domand0 = (Q0_0_reg & Q1_0_reg);
    assign p4_domand0 = (Q0_1_reg & Q1_1_reg);
    assign T0_0 = (i1_domand0_reg ^ p1_domand0);
    assign T0_1 = (i2_domand0_reg ^ p4_domand0);
    assign z1_assgn1 = !L2_0;
    assign z2_assgn2 = !L2_1;
    assign p2_domand1 = (x1_0_inp & Q4_1);
    assign i1_domand1 = (p2_domand1 ^ r_inp);
    assign p3_domand1 = (x1_1_inp & Q4_0);
    assign i2_domand1 = (p3_domand1 ^ r_inp);
    assign p1_domand1 = (x1_0_inp_reg & Q4_0_reg);
    assign p4_domand1 = (x1_1_inp_reg & Q4_1_reg);
    assign T2_0 = (i1_domand1_reg ^ p1_domand1);
    assign T2_1 = (i2_domand1_reg ^ p4_domand1);
    assign Q2_0 = (T0_0 ^ L2_0);
    assign L4_0 = (T0_0 ^ T2_0);
    assign Q7_0 = (T0_0 ^ L5_0);
    assign Q6_0 = (L4_0 ^ L3_0);
    assign Q2_1 = (T0_1 ^ L2_1);
    assign L4_1 = (T0_1 ^ T2_1);
    assign Q7_1 = (T0_1 ^ L5_1);
    assign Q6_1 = (L4_1 ^ L3_1);
    assign p2_domand2 = (Q2_0 & Q3_1);
    assign i1_domand2 = (p2_domand2 ^ r_inp_reg);
    assign p3_domand2 = (Q2_1 & Q3_0);
    assign i2_domand2 = (p3_domand2 ^ r_inp_reg);
    assign p1_domand2 = (Q2_0_reg & Q3_0_reg);
    assign p4_domand2 = (Q2_1_reg & Q3_1_reg);
    assign T1_0 = (i1_domand2_reg ^ p1_domand2);
    assign T1_1 = (i2_domand2_reg ^ p4_domand2);
    assign p2_domand3 = (Q6_0 & Q7_1);
    assign i1_domand3 = (p2_domand3 ^ r_inp_reg);
    assign p3_domand3 = (Q6_1 & Q7_0);
    assign i2_domand3 = (p3_domand3 ^ r_inp_reg);
    assign p1_domand3 = (Q6_0_reg & Q7_0_reg);
    assign p4_domand3 = (Q6_1_reg & Q7_1_reg);
    assign T3_0 = (i1_domand3_reg ^ p1_domand3);
    assign T3_1 = (i2_domand3_reg ^ p4_domand3);
    assign L7_0 = (T0_0_reg ^ T1_0);
    assign L11_0 = (T1_0 ^ L10_0);
    assign L7_1 = (T0_1_reg ^ T1_1);
    assign L11_1 = (T1_1 ^ L10_1);
    assign Y0_01 = (L7_0 ^ T2_0_reg);
    assign Y1_01 = (L8_0 ^ T3_0);
    assign Y0_11 = (L7_1 ^ T2_1_reg);
    assign Y1_11 = (L8_1 ^ T3_1);
    assign z7_assgn7 = (z3_assgn3_reg ^ Y0_01);
    assign z9_assgn9 = (L11_0 ^ T2_0_reg);
    assign z11_assgn11 = (T2_0_reg ^ L5_0_reg);
    assign z13_assgn13 = (z5_assgn5_reg ^ Y0_11);
    assign z15_assgn15 = (L11_1 ^ T2_1_reg);
    assign z17_assgn17 = (T2_1_reg ^ L5_1_reg);

    always @* begin
        z3_assgn3 <= x3_0_inp;
        z5_assgn5 <= x3_1_inp;
        z239_assgn2390 <= z239_assgn239;
        z45_assgn45 <= z239_assgn2390;
        z241_assgn2410 <= z241_assgn241;
        z46_assgn46 <= z241_assgn2410;
        x0_0_inp_reg <= x0_0_inp;
        z251_assgn2510 <= z251_assgn251;
        z53_assgn53 <= z251_assgn2510;
        z253_assgn2530 <= z253_assgn253;
        z54_assgn54 <= z253_assgn2530;
        x0_1_inp_reg <= x0_1_inp;
        Q1_0_reg <= Q1_0;
        x2_0_inp_reg <= x2_0_inp;
        Q0_0_reg <= Q0_0;
        Q1_1_reg <= Q1_1;
        x2_1_inp_reg <= x2_1_inp;
        Q0_1_reg <= Q0_1;
        i1_domand0_reg <= i1_domand0;
        i2_domand0_reg <= i2_domand0;
        L10_0 <= z1_assgn1;
        L10_1 <= z2_assgn2;
        x1_0_inp_reg <= x1_0_inp;
        Q4_0_reg <= Q4_0;
        x1_1_inp_reg <= x1_1_inp;
        Q4_1_reg <= Q4_1;
        i1_domand1_reg <= i1_domand1;
        i2_domand1_reg <= i2_domand1;
        r_inp_reg <= r_inp;
        Q2_0_reg <= Q2_0;
        Q3_0_reg <= Q3_0;
        Q2_1_reg <= Q2_1;
        Q3_1_reg <= Q3_1;
        i1_domand2_reg <= i1_domand2;
        i2_domand2_reg <= i2_domand2;
        Q6_0_reg <= Q6_0;
        Q7_0_reg <= Q7_0;
        Q6_1_reg <= Q6_1;
        Q7_1_reg <= Q7_1;
        i1_domand3_reg <= i1_domand3;
        i2_domand3_reg <= i2_domand3;
        T0_0_reg <= T0_0;
        T0_1_reg <= T0_1;
        T2_0_reg <= T2_0;
        T2_1_reg <= T2_1;
        z3_assgn3_reg <= z3_assgn3;
        Y0_0 <= z7_assgn7;
        Y1_0 <= (L7_0 ^ Y1_01);
        Y2_0 <= z9_assgn9;
        L5_0_reg <= L5_0;
        Y3_0 <= z11_assgn11;
        z5_assgn5_reg <= z5_assgn5;
        Y0_1 <= z13_assgn13;
        Y1_1 <= (L7_1 ^ Y1_11);
        Y2_1 <= z15_assgn15;
        L5_1_reg <= L5_1;
        Y3_1 <= z17_assgn17;
    end

endmodule

