module sbox(
    clk,
    a0,
    a1,
    b0,
    b1,
    r0,
    r1,
    r0_1,
    r1_1,
    y0,
    y1,
);
//INPUTS
    input clk;
    input  a0;
    input  a1;
    input  b0;
    input  b1;
    input  r0;
    input  r1;
    input  r0_1;
    input  r1_1;
//OUTPUTS
    output reg  y0;
    output reg  y1;
//Intermediate values
    wire b0_preshared;
    wire b1_preshared;
    reg b1_preshared_reg;
    wire p2;
    wire i1;
    reg b0_preshared_reg;
    wire p3;
    wire i2;
    wire p1;
    wire p4;
    reg i1_reg;
    reg p1_reg;
    wire a0_1;
    reg i2_reg;
    reg p4_reg;
    wire a1_1;
    wire b0_preshared_1;
    wire b1_preshared_1;
    wire z65_assgn65;
    reg z65_assgn650;
    reg z25_assgn25;
    wire p2_1;
    wire i1_1;
    wire z71_assgn71;
    reg z71_assgn710;
    reg z29_assgn29;
    wire p3_1;
    wire i2_1;
    wire z77_assgn77;
    reg z77_assgn770;
    reg z33_assgn33;
    wire p1_1;
    wire z81_assgn81;
    reg z81_assgn810;
    reg z35_assgn35;
    wire p4_1;
    reg i1_1_reg;
    reg p1_1_reg;
    reg i2_1_reg;
    reg p4_1_reg;

    assign b0_preshared = (b0 ^ r0);
    assign b1_preshared = (b1 ^ r0);
    assign p2 = (a0 & b1_preshared_reg);
    assign i1 = (p2 ^ r1);
    assign p3 = (a1 & b0_preshared_reg);
    assign i2 = (p3 ^ r1);
    assign p1 = (a0 & b0_preshared_reg);
    assign p4 = (a1 & b1_preshared_reg);
    assign a0_1 = (i1_reg ^ p1_reg);
    assign a1_1 = (i2_reg ^ p4_reg);
    assign b0_preshared_1 = (b0 ^ r0_1);
    assign b1_preshared_1 = (b1 ^ r0_1);
    assign z65_assgn65 = b1_preshared_1;
    assign p2_1 = (a0_1 & z25_assgn25);
    assign i1_1 = (p2_1 ^ r1_1);
    assign z71_assgn71 = b0_preshared_1;
    assign p3_1 = (a1_1 & z29_assgn29);
    assign i2_1 = (p3_1 ^ r1_1);
    assign z77_assgn77 = b0_preshared_1;
    assign p1_1 = (a0_1 & z33_assgn33);
    assign z81_assgn81 = b1_preshared_1;
    assign p4_1 = (a1_1 & z35_assgn35);

    always @(posedge clk) begin
        b1_preshared_reg <= b1_preshared;
        b0_preshared_reg <= b0_preshared;
        i1_reg <= i1;
        p1_reg <= p1;
        i2_reg <= i2;
        p4_reg <= p4;
        z65_assgn650 <= z65_assgn65;
        z25_assgn25 <= z65_assgn650;
        z71_assgn710 <= z71_assgn71;
        z29_assgn29 <= z71_assgn710;
        z77_assgn770 <= z77_assgn77;
        z33_assgn33 <= z77_assgn770;
        z81_assgn810 <= z81_assgn81;
        z35_assgn35 <= z81_assgn810;
        i1_1_reg <= i1_1;
        p1_1_reg <= p1_1;
        y0 <= (i1_1_reg ^ p1_1_reg);
        i2_1_reg <= i2_1;
        p4_1_reg <= p4_1;
        y1 <= (i2_1_reg ^ p4_1_reg);
    end

endmodule

