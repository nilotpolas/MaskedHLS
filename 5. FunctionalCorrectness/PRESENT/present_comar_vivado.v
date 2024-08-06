// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reg_int_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] x;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] ap_return;

reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return <= x;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

endmodule //reg_int_s

module sbox (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
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
        Y0_0_ap_vld,
        Y1_0,
        Y1_0_ap_vld,
        Y2_0,
        Y2_0_ap_vld,
        Y3_0,
        Y3_0_ap_vld,
        Y0_1,
        Y0_1_ap_vld,
        Y1_1,
        Y1_1_ap_vld,
        Y2_1,
        Y2_1_ap_vld,
        Y3_1,
        Y3_1_ap_vld
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   x0_0;
input   x1_0;
input   x2_0;
input   x3_0;
input   x0_1;
input   x1_1;
input   x2_1;
input   x3_1;
input   r0;
input   r1;
input   r0_1;
input   r1_1;
input   r2_1;
input   r3_1;
output   Y0_0;
output   Y0_0_ap_vld;
output   Y1_0;
output   Y1_0_ap_vld;
output   Y2_0;
output   Y2_0_ap_vld;
output   Y3_0;
output   Y3_0_ap_vld;
output   Y0_1;
output   Y0_1_ap_vld;
output   Y1_1;
output   Y1_1_ap_vld;
output   Y2_1;
output   Y2_1_ap_vld;
output   Y3_1;
output   Y3_1_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Y0_0_ap_vld;
reg Y1_0_ap_vld;
reg Y2_0_ap_vld;
reg Y3_0_ap_vld;
reg Y0_1_ap_vld;
reg Y1_1_ap_vld;
reg Y2_1_ap_vld;
reg Y3_1_ap_vld;

reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] L10_1_fu_360_p2;
reg   [0:0] L10_1_reg_854;
wire   [0:0] xor_ln193_fu_468_p2;
reg   [0:0] xor_ln193_reg_859;
wire   [0:0] Q7_1_fu_474_p2;
reg   [0:0] Q7_1_reg_864;
wire   [0:0] Y1_11_fu_696_p2;
reg   [0:0] Y1_11_reg_869;
wire   [0:0] xor_ln279_fu_708_p2;
reg   [0:0] xor_ln279_reg_874;
wire   [0:0] xor_ln280_fu_775_p2;
reg   [0:0] xor_ln280_reg_879;
wire   [0:0] xor_ln281_fu_800_p2;
reg   [0:0] xor_ln281_reg_884;
wire   [0:0] xor_ln282_fu_813_p2;
reg   [0:0] xor_ln282_reg_889;
wire    grp_reg_int_s_fu_714_ap_start;
wire    grp_reg_int_s_fu_714_ap_done;
wire    grp_reg_int_s_fu_714_ap_idle;
wire    grp_reg_int_s_fu_714_ap_ready;
wire   [0:0] grp_reg_int_s_fu_714_ap_return;
wire    grp_reg_int_s_fu_781_ap_start;
wire    grp_reg_int_s_fu_781_ap_done;
wire    grp_reg_int_s_fu_781_ap_idle;
wire    grp_reg_int_s_fu_781_ap_ready;
wire   [0:0] grp_reg_int_s_fu_781_ap_return;
wire    grp_reg_int_s_fu_806_ap_start;
wire    grp_reg_int_s_fu_806_ap_done;
wire    grp_reg_int_s_fu_806_ap_idle;
wire    grp_reg_int_s_fu_806_ap_ready;
wire   [0:0] grp_reg_int_s_fu_806_ap_return;
wire    grp_reg_int_s_fu_819_ap_start;
wire    grp_reg_int_s_fu_819_ap_done;
wire    grp_reg_int_s_fu_819_ap_idle;
wire    grp_reg_int_s_fu_819_ap_ready;
wire   [0:0] grp_reg_int_s_fu_819_ap_return;
wire    grp_reg_int_s_fu_826_ap_start;
wire    grp_reg_int_s_fu_826_ap_done;
wire    grp_reg_int_s_fu_826_ap_idle;
wire    grp_reg_int_s_fu_826_ap_ready;
wire   [0:0] grp_reg_int_s_fu_826_ap_return;
wire    grp_reg_int_s_fu_833_ap_start;
wire    grp_reg_int_s_fu_833_ap_done;
wire    grp_reg_int_s_fu_833_ap_idle;
wire    grp_reg_int_s_fu_833_ap_ready;
wire   [0:0] grp_reg_int_s_fu_833_ap_return;
wire    grp_reg_int_s_fu_840_ap_start;
wire    grp_reg_int_s_fu_840_ap_done;
wire    grp_reg_int_s_fu_840_ap_idle;
wire    grp_reg_int_s_fu_840_ap_ready;
wire   [0:0] grp_reg_int_s_fu_840_ap_return;
wire    grp_reg_int_s_fu_847_ap_start;
wire    grp_reg_int_s_fu_847_ap_done;
wire    grp_reg_int_s_fu_847_ap_idle;
wire    grp_reg_int_s_fu_847_ap_ready;
wire   [0:0] grp_reg_int_s_fu_847_ap_return;
reg    grp_reg_int_s_fu_714_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_reg_int_s_fu_781_ap_start_reg;
reg    grp_reg_int_s_fu_806_ap_start_reg;
reg    grp_reg_int_s_fu_819_ap_start_reg;
reg    grp_reg_int_s_fu_826_ap_start_reg;
reg    grp_reg_int_s_fu_833_ap_start_reg;
reg    grp_reg_int_s_fu_840_ap_start_reg;
reg    grp_reg_int_s_fu_847_ap_start_reg;
reg    ap_block_state2_on_subcall_done;
wire   [0:0] L1_0_fu_198_p0;
wire   [0:0] L1_0_fu_198_p1;
wire   [0:0] L5_0_fu_204_p0;
wire   [0:0] L5_0_fu_204_p1;
wire   [0:0] L1_1_fu_210_p0;
wire   [0:0] L1_1_fu_210_p1;
wire   [0:0] xor_ln97_fu_216_p0;
wire   [0:0] xor_ln97_fu_216_p1;
wire   [0:0] xor_ln97_fu_216_p2;
wire   [0:0] L1_0_fu_198_p2;
wire   [0:0] xor_ln101_fu_234_p0;
wire   [0:0] xor_ln101_fu_234_p1;
wire   [0:0] xor_ln101_fu_234_p2;
wire   [0:0] L1_1_fu_210_p2;
wire   [0:0] m0_comar0_fu_252_p0;
wire   [0:0] Q0_0_fu_222_p2;
wire   [0:0] m1_comar0_fu_258_p0;
wire   [0:0] Q1_1_fu_246_p2;
wire   [0:0] m2_comar0_fu_264_p0;
wire   [0:0] Q1_0_fu_228_p2;
wire   [0:0] m3_comar0_fu_270_p0;
wire   [0:0] Q0_1_fu_240_p2;
wire   [0:0] m0_comar0_fu_252_p2;
wire   [0:0] m1_comar0_fu_258_p2;
wire   [0:0] m3_comar0_fu_270_p2;
wire   [0:0] m2_comar0_fu_264_p2;
wire   [0:0] p3_comar0_fu_282_p2;
wire   [0:0] xor_ln141_fu_300_p1;
wire   [0:0] p2_comar0_fu_276_p2;
wire   [0:0] xor_ln141_1_fu_306_p1;
wire   [0:0] xor_ln141_1_fu_306_p2;
wire   [0:0] xor_ln141_fu_300_p2;
wire   [0:0] p1_comar0_fu_288_p2;
wire   [0:0] xor_ln141_3_fu_318_p1;
wire   [0:0] p4_comar0_fu_294_p2;
wire   [0:0] xor_ln141_4_fu_324_p1;
wire   [0:0] xor_ln141_4_fu_324_p2;
wire   [0:0] xor_ln141_3_fu_318_p2;
wire   [0:0] xor_ln141_5_fu_330_p2;
wire   [0:0] xor_ln141_2_fu_312_p2;
wire   [0:0] xor_ln146_fu_342_p0;
wire   [0:0] xor_ln146_fu_342_p1;
wire   [0:0] xor_ln146_1_fu_348_p0;
wire   [0:0] xor_ln146_1_fu_348_p1;
wire   [0:0] xor_ln146_1_fu_348_p2;
wire   [0:0] xor_ln146_fu_342_p2;
wire   [0:0] L10_1_fu_360_p1;
wire   [0:0] m0_comar1_fu_366_p0;
wire   [0:0] m0_comar1_fu_366_p1;
wire   [0:0] xor_ln168_fu_372_p0;
wire   [0:0] xor_ln168_fu_372_p1;
wire   [0:0] xor_ln168_fu_372_p2;
wire   [0:0] xor_ln169_fu_384_p0;
wire   [0:0] xor_ln169_fu_384_p1;
wire   [0:0] xor_ln169_fu_384_p2;
wire   [0:0] m3_comar1_fu_396_p0;
wire   [0:0] m3_comar1_fu_396_p1;
wire   [0:0] m0_comar1_fu_366_p2;
wire   [0:0] m1_comar1_fu_378_p2;
wire   [0:0] m3_comar1_fu_396_p2;
wire   [0:0] m2_comar1_fu_390_p2;
wire   [0:0] p3_comar1_fu_408_p2;
wire   [0:0] xor_ln181_fu_426_p1;
wire   [0:0] p2_comar1_fu_402_p2;
wire   [0:0] xor_ln181_1_fu_432_p1;
wire   [0:0] xor_ln181_1_fu_432_p2;
wire   [0:0] xor_ln181_fu_426_p2;
wire   [0:0] p1_comar1_fu_414_p2;
wire   [0:0] xor_ln181_3_fu_444_p1;
wire   [0:0] p4_comar1_fu_420_p2;
wire   [0:0] xor_ln181_4_fu_450_p1;
wire   [0:0] xor_ln181_4_fu_450_p2;
wire   [0:0] xor_ln181_3_fu_444_p2;
wire   [0:0] xor_ln181_5_fu_456_p2;
wire   [0:0] xor_ln181_2_fu_438_p2;
wire   [0:0] T0_1_fu_354_p2;
wire   [0:0] xor_ln193_fu_468_p1;
wire   [0:0] Q7_1_fu_474_p1;
wire   [0:0] T0_0_fu_336_p2;
wire   [0:0] xor_ln213_fu_480_p1;
wire   [0:0] xor_ln213_1_fu_486_p0;
wire   [0:0] xor_ln213_1_fu_486_p2;
wire   [0:0] xor_ln213_fu_480_p2;
wire   [0:0] xor_ln214_fu_498_p0;
wire   [0:0] xor_ln214_fu_498_p1;
wire   [0:0] xor_ln214_fu_498_p2;
wire   [0:0] xor_ln215_fu_510_p0;
wire   [0:0] xor_ln215_fu_510_p1;
wire   [0:0] xor_ln215_fu_510_p2;
wire   [0:0] xor_ln216_fu_522_p1;
wire   [0:0] xor_ln216_1_fu_528_p0;
wire   [0:0] xor_ln216_1_fu_528_p2;
wire   [0:0] xor_ln216_fu_522_p2;
wire   [0:0] m0_comar2_fu_492_p2;
wire   [0:0] m1_comar2_fu_504_p2;
wire   [0:0] m3_comar2_fu_534_p2;
wire   [0:0] m2_comar2_fu_516_p2;
wire   [0:0] p3_comar2_fu_546_p2;
wire   [0:0] xor_ln227_fu_564_p1;
wire   [0:0] p2_comar2_fu_540_p2;
wire   [0:0] xor_ln227_1_fu_570_p1;
wire   [0:0] xor_ln227_1_fu_570_p2;
wire   [0:0] xor_ln227_fu_564_p2;
wire   [0:0] p1_comar2_fu_552_p2;
wire   [0:0] xor_ln227_3_fu_582_p1;
wire   [0:0] p4_comar2_fu_558_p2;
wire   [0:0] xor_ln227_4_fu_588_p1;
wire   [0:0] xor_ln227_4_fu_588_p2;
wire   [0:0] xor_ln227_3_fu_582_p2;
wire   [0:0] xor_ln227_5_fu_594_p2;
wire   [0:0] xor_ln227_2_fu_576_p2;
wire   [0:0] xor_ln251_fu_606_p0;
wire   [0:0] xor_ln251_1_fu_612_p1;
wire   [0:0] xor_ln251_1_fu_612_p2;
wire   [0:0] T2_0_fu_462_p2;
wire   [0:0] xor_ln251_2_fu_618_p2;
wire   [0:0] xor_ln251_fu_606_p2;
wire   [0:0] m1_comar3_fu_630_p1;
wire   [0:0] L5_0_fu_204_p2;
wire   [0:0] xor_ln253_fu_636_p1;
wire   [0:0] xor_ln253_fu_636_p2;
wire   [0:0] xor_ln254_fu_648_p0;
wire   [0:0] xor_ln254_fu_648_p1;
wire   [0:0] xor_ln254_fu_648_p2;
wire   [0:0] m0_comar3_fu_624_p2;
wire   [0:0] m1_comar3_fu_630_p2;
wire   [0:0] m3_comar3_fu_654_p2;
wire   [0:0] m2_comar3_fu_642_p2;
wire   [0:0] T1_0_fu_600_p2;
wire   [0:0] xor_ln278_fu_690_p1;
wire   [0:0] xor_ln278_fu_690_p2;
wire   [0:0] Y1_11_fu_696_p1;
wire   [0:0] xor_ln279_1_fu_702_p1;
wire   [0:0] xor_ln279_1_fu_702_p2;
wire   [0:0] L7_0_fu_684_p2;
wire   [0:0] xor_ln280_1_fu_721_p0;
wire   [0:0] xor_ln280_1_fu_721_p1;
wire   [0:0] p4_comar3_fu_678_p2;
wire   [0:0] xor_ln280_2_fu_727_p1;
wire   [0:0] xor_ln280_2_fu_727_p2;
wire   [0:0] xor_ln280_3_fu_733_p1;
wire   [0:0] xor_ln280_3_fu_733_p2;
wire   [0:0] xor_ln280_1_fu_721_p2;
wire   [0:0] p3_comar3_fu_666_p2;
wire   [0:0] xor_ln280_5_fu_745_p1;
wire   [0:0] xor_ln280_5_fu_745_p2;
wire   [0:0] p1_comar3_fu_672_p2;
wire   [0:0] p2_comar3_fu_660_p2;
wire   [0:0] xor_ln280_7_fu_757_p2;
wire   [0:0] xor_ln280_8_fu_763_p1;
wire   [0:0] xor_ln280_8_fu_763_p2;
wire   [0:0] xor_ln280_6_fu_751_p2;
wire   [0:0] xor_ln280_9_fu_769_p2;
wire   [0:0] xor_ln280_4_fu_739_p2;
wire   [0:0] xor_ln281_1_fu_788_p1;
wire   [0:0] xor_ln281_2_fu_794_p2;
wire   [0:0] xor_ln281_1_fu_788_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_reg_int_s_fu_714_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_781_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_806_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_819_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_826_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_833_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_840_ap_start_reg = 1'b0;
#0 grp_reg_int_s_fu_847_ap_start_reg = 1'b0;
end

reg_int_s grp_reg_int_s_fu_714(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_714_ap_start),
    .ap_done(grp_reg_int_s_fu_714_ap_done),
    .ap_idle(grp_reg_int_s_fu_714_ap_idle),
    .ap_ready(grp_reg_int_s_fu_714_ap_ready),
    .x(xor_ln279_reg_874),
    .ap_return(grp_reg_int_s_fu_714_ap_return)
);

reg_int_s grp_reg_int_s_fu_781(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_781_ap_start),
    .ap_done(grp_reg_int_s_fu_781_ap_done),
    .ap_idle(grp_reg_int_s_fu_781_ap_idle),
    .ap_ready(grp_reg_int_s_fu_781_ap_ready),
    .x(xor_ln280_reg_879),
    .ap_return(grp_reg_int_s_fu_781_ap_return)
);

reg_int_s grp_reg_int_s_fu_806(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_806_ap_start),
    .ap_done(grp_reg_int_s_fu_806_ap_done),
    .ap_idle(grp_reg_int_s_fu_806_ap_idle),
    .ap_ready(grp_reg_int_s_fu_806_ap_ready),
    .x(xor_ln281_reg_884),
    .ap_return(grp_reg_int_s_fu_806_ap_return)
);

reg_int_s grp_reg_int_s_fu_819(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_819_ap_start),
    .ap_done(grp_reg_int_s_fu_819_ap_done),
    .ap_idle(grp_reg_int_s_fu_819_ap_idle),
    .ap_ready(grp_reg_int_s_fu_819_ap_ready),
    .x(xor_ln282_reg_889),
    .ap_return(grp_reg_int_s_fu_819_ap_return)
);

reg_int_s grp_reg_int_s_fu_826(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_826_ap_start),
    .ap_done(grp_reg_int_s_fu_826_ap_done),
    .ap_idle(grp_reg_int_s_fu_826_ap_idle),
    .ap_ready(grp_reg_int_s_fu_826_ap_ready),
    .x(xor_ln193_reg_859),
    .ap_return(grp_reg_int_s_fu_826_ap_return)
);

reg_int_s grp_reg_int_s_fu_833(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_833_ap_start),
    .ap_done(grp_reg_int_s_fu_833_ap_done),
    .ap_idle(grp_reg_int_s_fu_833_ap_idle),
    .ap_ready(grp_reg_int_s_fu_833_ap_ready),
    .x(Y1_11_reg_869),
    .ap_return(grp_reg_int_s_fu_833_ap_return)
);

reg_int_s grp_reg_int_s_fu_840(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_840_ap_start),
    .ap_done(grp_reg_int_s_fu_840_ap_done),
    .ap_idle(grp_reg_int_s_fu_840_ap_idle),
    .ap_ready(grp_reg_int_s_fu_840_ap_ready),
    .x(L10_1_reg_854),
    .ap_return(grp_reg_int_s_fu_840_ap_return)
);

reg_int_s grp_reg_int_s_fu_847(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_reg_int_s_fu_847_ap_start),
    .ap_done(grp_reg_int_s_fu_847_ap_done),
    .ap_idle(grp_reg_int_s_fu_847_ap_idle),
    .ap_ready(grp_reg_int_s_fu_847_ap_ready),
    .x(Q7_1_reg_864),
    .ap_return(grp_reg_int_s_fu_847_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_714_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_714_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_714_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_714_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_781_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_781_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_781_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_781_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_806_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_806_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_806_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_806_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_819_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_819_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_819_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_819_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_826_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_826_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_826_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_826_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_833_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_833_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_833_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_833_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_840_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_840_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_840_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_840_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_reg_int_s_fu_847_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_reg_int_s_fu_847_ap_start_reg <= 1'b1;
        end else if ((grp_reg_int_s_fu_847_ap_ready == 1'b1)) begin
            grp_reg_int_s_fu_847_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        L10_1_reg_854 <= L10_1_fu_360_p2;
        Q7_1_reg_864 <= Q7_1_fu_474_p2;
        Y1_11_reg_869 <= Y1_11_fu_696_p2;
        xor_ln193_reg_859 <= xor_ln193_fu_468_p2;
        xor_ln279_reg_874 <= xor_ln279_fu_708_p2;
        xor_ln280_reg_879 <= xor_ln280_fu_775_p2;
        xor_ln281_reg_884 <= xor_ln281_fu_800_p2;
        xor_ln282_reg_889 <= xor_ln282_fu_813_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y0_0_ap_vld = 1'b1;
    end else begin
        Y0_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y0_1_ap_vld = 1'b1;
    end else begin
        Y0_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y1_0_ap_vld = 1'b1;
    end else begin
        Y1_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y1_1_ap_vld = 1'b1;
    end else begin
        Y1_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y2_0_ap_vld = 1'b1;
    end else begin
        Y2_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y2_1_ap_vld = 1'b1;
    end else begin
        Y2_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y3_0_ap_vld = 1'b1;
    end else begin
        Y3_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        Y3_1_ap_vld = 1'b1;
    end else begin
        Y3_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign L10_1_fu_360_p1 = x2_1;

assign L10_1_fu_360_p2 = (L1_1_fu_210_p2 ^ L10_1_fu_360_p1);

assign L1_0_fu_198_p0 = x0_0;

assign L1_0_fu_198_p1 = x1_0;

assign L1_0_fu_198_p2 = (L1_0_fu_198_p1 ^ L1_0_fu_198_p0);

assign L1_1_fu_210_p0 = x0_1;

assign L1_1_fu_210_p1 = x1_1;

assign L1_1_fu_210_p2 = (L1_1_fu_210_p1 ^ L1_1_fu_210_p0);

assign L5_0_fu_204_p0 = x0_0;

assign L5_0_fu_204_p1 = x3_0;

assign L5_0_fu_204_p2 = (L5_0_fu_204_p1 ^ L5_0_fu_204_p0);

assign L7_0_fu_684_p2 = (T1_0_fu_600_p2 ^ T0_0_fu_336_p2);

assign Q0_0_fu_222_p2 = (xor_ln97_fu_216_p2 ^ 1'd1);

assign Q0_1_fu_240_p2 = (xor_ln101_fu_234_p2 ^ 1'd1);

assign Q1_0_fu_228_p2 = (1'd1 ^ L1_0_fu_198_p2);

assign Q1_1_fu_246_p2 = (1'd1 ^ L1_1_fu_210_p2);

assign Q7_1_fu_474_p1 = x0_1;

assign Q7_1_fu_474_p2 = (xor_ln193_fu_468_p2 ^ Q7_1_fu_474_p1);

assign T0_0_fu_336_p2 = (xor_ln141_5_fu_330_p2 ^ xor_ln141_2_fu_312_p2);

assign T0_1_fu_354_p2 = (xor_ln146_fu_342_p2 ^ xor_ln146_1_fu_348_p2);

assign T1_0_fu_600_p2 = (xor_ln227_5_fu_594_p2 ^ xor_ln227_2_fu_576_p2);

assign T2_0_fu_462_p2 = (xor_ln181_5_fu_456_p2 ^ xor_ln181_2_fu_438_p2);

assign Y0_0 = grp_reg_int_s_fu_714_ap_return;

assign Y0_1 = grp_reg_int_s_fu_826_ap_return;

assign Y1_0 = grp_reg_int_s_fu_781_ap_return;

assign Y1_1 = grp_reg_int_s_fu_833_ap_return;

assign Y1_11_fu_696_p1 = x2_1;

assign Y1_11_fu_696_p2 = (xor_ln278_fu_690_p2 ^ Y1_11_fu_696_p1);

assign Y2_0 = grp_reg_int_s_fu_806_ap_return;

assign Y2_1 = grp_reg_int_s_fu_840_ap_return;

assign Y3_0 = grp_reg_int_s_fu_819_ap_return;

assign Y3_1 = grp_reg_int_s_fu_847_ap_return;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_reg_int_s_fu_819_ap_done == 1'b0) | (grp_reg_int_s_fu_806_ap_done == 1'b0) | (grp_reg_int_s_fu_781_ap_done == 1'b0) | (grp_reg_int_s_fu_714_ap_done == 1'b0) | (grp_reg_int_s_fu_847_ap_done == 1'b0) | (grp_reg_int_s_fu_840_ap_done == 1'b0) | (grp_reg_int_s_fu_833_ap_done == 1'b0) | (grp_reg_int_s_fu_826_ap_done == 1'b0));
end

assign grp_reg_int_s_fu_714_ap_start = grp_reg_int_s_fu_714_ap_start_reg;

assign grp_reg_int_s_fu_781_ap_start = grp_reg_int_s_fu_781_ap_start_reg;

assign grp_reg_int_s_fu_806_ap_start = grp_reg_int_s_fu_806_ap_start_reg;

assign grp_reg_int_s_fu_819_ap_start = grp_reg_int_s_fu_819_ap_start_reg;

assign grp_reg_int_s_fu_826_ap_start = grp_reg_int_s_fu_826_ap_start_reg;

assign grp_reg_int_s_fu_833_ap_start = grp_reg_int_s_fu_833_ap_start_reg;

assign grp_reg_int_s_fu_840_ap_start = grp_reg_int_s_fu_840_ap_start_reg;

assign grp_reg_int_s_fu_847_ap_start = grp_reg_int_s_fu_847_ap_start_reg;

assign m0_comar0_fu_252_p0 = r0;

assign m0_comar0_fu_252_p2 = (m0_comar0_fu_252_p0 ^ Q0_0_fu_222_p2);

assign m0_comar1_fu_366_p0 = x1_0;

assign m0_comar1_fu_366_p1 = r0;

assign m0_comar1_fu_366_p2 = (m0_comar1_fu_366_p1 ^ m0_comar1_fu_366_p0);

assign m0_comar2_fu_492_p2 = (xor_ln213_fu_480_p2 ^ xor_ln213_1_fu_486_p2);

assign m0_comar3_fu_624_p2 = (xor_ln251_fu_606_p2 ^ xor_ln251_2_fu_618_p2);

assign m1_comar0_fu_258_p0 = r1;

assign m1_comar0_fu_258_p2 = (m1_comar0_fu_258_p0 ^ Q1_1_fu_246_p2);

assign m1_comar1_fu_378_p2 = (xor_ln168_fu_372_p2 ^ 1'd1);

assign m1_comar2_fu_504_p2 = (xor_ln214_fu_498_p2 ^ 1'd1);

assign m1_comar3_fu_630_p1 = r1;

assign m1_comar3_fu_630_p2 = (m1_comar3_fu_630_p1 ^ Q7_1_fu_474_p2);

assign m2_comar0_fu_264_p0 = r1;

assign m2_comar0_fu_264_p2 = (m2_comar0_fu_264_p0 ^ Q1_0_fu_228_p2);

assign m2_comar1_fu_390_p2 = (xor_ln169_fu_384_p2 ^ 1'd1);

assign m2_comar2_fu_516_p2 = (xor_ln215_fu_510_p2 ^ 1'd1);

assign m2_comar3_fu_642_p2 = (xor_ln253_fu_636_p2 ^ T0_0_fu_336_p2);

assign m3_comar0_fu_270_p0 = r0;

assign m3_comar0_fu_270_p2 = (m3_comar0_fu_270_p0 ^ Q0_1_fu_240_p2);

assign m3_comar1_fu_396_p0 = x1_1;

assign m3_comar1_fu_396_p1 = r0;

assign m3_comar1_fu_396_p2 = (m3_comar1_fu_396_p1 ^ m3_comar1_fu_396_p0);

assign m3_comar2_fu_534_p2 = (xor_ln216_fu_522_p2 ^ xor_ln216_1_fu_528_p2);

assign m3_comar3_fu_654_p2 = (xor_ln254_fu_648_p2 ^ Q0_1_fu_240_p2);

assign p1_comar0_fu_288_p2 = (m2_comar0_fu_264_p2 & m0_comar0_fu_252_p2);

assign p1_comar1_fu_414_p2 = (m2_comar1_fu_390_p2 & m0_comar1_fu_366_p2);

assign p1_comar2_fu_552_p2 = (m2_comar2_fu_516_p2 & m0_comar2_fu_492_p2);

assign p1_comar3_fu_672_p2 = (m2_comar3_fu_642_p2 & m0_comar3_fu_624_p2);

assign p2_comar0_fu_276_p2 = (m1_comar0_fu_258_p2 & m0_comar0_fu_252_p2);

assign p2_comar1_fu_402_p2 = (m1_comar1_fu_378_p2 & m0_comar1_fu_366_p2);

assign p2_comar2_fu_540_p2 = (m1_comar2_fu_504_p2 & m0_comar2_fu_492_p2);

assign p2_comar3_fu_660_p2 = (m1_comar3_fu_630_p2 & m0_comar3_fu_624_p2);

assign p3_comar0_fu_282_p2 = (m3_comar0_fu_270_p2 & m2_comar0_fu_264_p2);

assign p3_comar1_fu_408_p2 = (m3_comar1_fu_396_p2 & m2_comar1_fu_390_p2);

assign p3_comar2_fu_546_p2 = (m3_comar2_fu_534_p2 & m2_comar2_fu_516_p2);

assign p3_comar3_fu_666_p2 = (m3_comar3_fu_654_p2 & m2_comar3_fu_642_p2);

assign p4_comar0_fu_294_p2 = (m3_comar0_fu_270_p2 & m1_comar0_fu_258_p2);

assign p4_comar1_fu_420_p2 = (m3_comar1_fu_396_p2 & m1_comar1_fu_378_p2);

assign p4_comar2_fu_558_p2 = (m3_comar2_fu_534_p2 & m1_comar2_fu_504_p2);

assign p4_comar3_fu_678_p2 = (m3_comar3_fu_654_p2 & m1_comar3_fu_630_p2);

assign xor_ln101_fu_234_p0 = x1_1;

assign xor_ln101_fu_234_p1 = x2_1;

assign xor_ln101_fu_234_p2 = (xor_ln101_fu_234_p1 ^ xor_ln101_fu_234_p0);

assign xor_ln141_1_fu_306_p1 = r1_1;

assign xor_ln141_1_fu_306_p2 = (xor_ln141_1_fu_306_p1 ^ p2_comar0_fu_276_p2);

assign xor_ln141_2_fu_312_p2 = (xor_ln141_fu_300_p2 ^ xor_ln141_1_fu_306_p2);

assign xor_ln141_3_fu_318_p1 = r0_1;

assign xor_ln141_3_fu_318_p2 = (xor_ln141_3_fu_318_p1 ^ p1_comar0_fu_288_p2);

assign xor_ln141_4_fu_324_p1 = r3_1;

assign xor_ln141_4_fu_324_p2 = (xor_ln141_4_fu_324_p1 ^ p4_comar0_fu_294_p2);

assign xor_ln141_5_fu_330_p2 = (xor_ln141_4_fu_324_p2 ^ xor_ln141_3_fu_318_p2);

assign xor_ln141_fu_300_p1 = r2_1;

assign xor_ln141_fu_300_p2 = (xor_ln141_fu_300_p1 ^ p3_comar0_fu_282_p2);

assign xor_ln146_1_fu_348_p0 = r0_1;

assign xor_ln146_1_fu_348_p1 = r3_1;

assign xor_ln146_1_fu_348_p2 = (xor_ln146_1_fu_348_p1 ^ xor_ln146_1_fu_348_p0);

assign xor_ln146_fu_342_p0 = r1_1;

assign xor_ln146_fu_342_p1 = r2_1;

assign xor_ln146_fu_342_p2 = (xor_ln146_fu_342_p1 ^ xor_ln146_fu_342_p0);

assign xor_ln168_fu_372_p0 = x2_1;

assign xor_ln168_fu_372_p1 = r1;

assign xor_ln168_fu_372_p2 = (xor_ln168_fu_372_p1 ^ xor_ln168_fu_372_p0);

assign xor_ln169_fu_384_p0 = x2_0;

assign xor_ln169_fu_384_p1 = r1;

assign xor_ln169_fu_384_p2 = (xor_ln169_fu_384_p1 ^ xor_ln169_fu_384_p0);

assign xor_ln181_1_fu_432_p1 = r1_1;

assign xor_ln181_1_fu_432_p2 = (xor_ln181_1_fu_432_p1 ^ p2_comar1_fu_402_p2);

assign xor_ln181_2_fu_438_p2 = (xor_ln181_fu_426_p2 ^ xor_ln181_1_fu_432_p2);

assign xor_ln181_3_fu_444_p1 = r0_1;

assign xor_ln181_3_fu_444_p2 = (xor_ln181_3_fu_444_p1 ^ p1_comar1_fu_414_p2);

assign xor_ln181_4_fu_450_p1 = r3_1;

assign xor_ln181_4_fu_450_p2 = (xor_ln181_4_fu_450_p1 ^ p4_comar1_fu_420_p2);

assign xor_ln181_5_fu_456_p2 = (xor_ln181_4_fu_450_p2 ^ xor_ln181_3_fu_444_p2);

assign xor_ln181_fu_426_p1 = r2_1;

assign xor_ln181_fu_426_p2 = (xor_ln181_fu_426_p1 ^ p3_comar1_fu_408_p2);

assign xor_ln193_fu_468_p1 = x3_1;

assign xor_ln193_fu_468_p2 = (xor_ln193_fu_468_p1 ^ T0_1_fu_354_p2);

assign xor_ln213_1_fu_486_p0 = r0;

assign xor_ln213_1_fu_486_p2 = (xor_ln213_1_fu_486_p0 ^ Q1_0_fu_228_p2);

assign xor_ln213_fu_480_p1 = x2_0;

assign xor_ln213_fu_480_p2 = (xor_ln213_fu_480_p1 ^ T0_0_fu_336_p2);

assign xor_ln214_fu_498_p0 = x3_1;

assign xor_ln214_fu_498_p1 = r1;

assign xor_ln214_fu_498_p2 = (xor_ln214_fu_498_p1 ^ xor_ln214_fu_498_p0);

assign xor_ln215_fu_510_p0 = x3_0;

assign xor_ln215_fu_510_p1 = r1;

assign xor_ln215_fu_510_p2 = (xor_ln215_fu_510_p1 ^ xor_ln215_fu_510_p0);

assign xor_ln216_1_fu_528_p0 = r0;

assign xor_ln216_1_fu_528_p2 = (xor_ln216_1_fu_528_p0 ^ Q1_1_fu_246_p2);

assign xor_ln216_fu_522_p1 = x2_1;

assign xor_ln216_fu_522_p2 = (xor_ln216_fu_522_p1 ^ T0_1_fu_354_p2);

assign xor_ln227_1_fu_570_p1 = r1_1;

assign xor_ln227_1_fu_570_p2 = (xor_ln227_1_fu_570_p1 ^ p2_comar2_fu_540_p2);

assign xor_ln227_2_fu_576_p2 = (xor_ln227_fu_564_p2 ^ xor_ln227_1_fu_570_p2);

assign xor_ln227_3_fu_582_p1 = r0_1;

assign xor_ln227_3_fu_582_p2 = (xor_ln227_3_fu_582_p1 ^ p1_comar2_fu_552_p2);

assign xor_ln227_4_fu_588_p1 = r3_1;

assign xor_ln227_4_fu_588_p2 = (xor_ln227_4_fu_588_p1 ^ p4_comar2_fu_558_p2);

assign xor_ln227_5_fu_594_p2 = (xor_ln227_4_fu_588_p2 ^ xor_ln227_3_fu_582_p2);

assign xor_ln227_fu_564_p1 = r2_1;

assign xor_ln227_fu_564_p2 = (xor_ln227_fu_564_p1 ^ p3_comar2_fu_546_p2);

assign xor_ln251_1_fu_612_p1 = r0;

assign xor_ln251_1_fu_612_p2 = (xor_ln251_1_fu_612_p1 ^ T0_0_fu_336_p2);

assign xor_ln251_2_fu_618_p2 = (xor_ln251_1_fu_612_p2 ^ T2_0_fu_462_p2);

assign xor_ln251_fu_606_p0 = x3_0;

assign xor_ln251_fu_606_p2 = (xor_ln251_fu_606_p0 ^ Q0_0_fu_222_p2);

assign xor_ln253_fu_636_p1 = r1;

assign xor_ln253_fu_636_p2 = (xor_ln253_fu_636_p1 ^ L5_0_fu_204_p2);

assign xor_ln254_fu_648_p0 = x3_1;

assign xor_ln254_fu_648_p1 = r0;

assign xor_ln254_fu_648_p2 = (xor_ln254_fu_648_p1 ^ xor_ln254_fu_648_p0);

assign xor_ln278_fu_690_p1 = x0_1;

assign xor_ln278_fu_690_p2 = (xor_ln278_fu_690_p1 ^ T0_1_fu_354_p2);

assign xor_ln279_1_fu_702_p1 = x3_0;

assign xor_ln279_1_fu_702_p2 = (xor_ln279_1_fu_702_p1 ^ T2_0_fu_462_p2);

assign xor_ln279_fu_708_p2 = (xor_ln279_1_fu_702_p2 ^ L7_0_fu_684_p2);

assign xor_ln280_1_fu_721_p0 = x2_0;

assign xor_ln280_1_fu_721_p1 = x0_0;

assign xor_ln280_1_fu_721_p2 = (xor_ln280_1_fu_721_p1 ^ xor_ln280_1_fu_721_p0);

assign xor_ln280_2_fu_727_p1 = r0_1;

assign xor_ln280_2_fu_727_p2 = (xor_ln280_2_fu_727_p1 ^ p4_comar3_fu_678_p2);

assign xor_ln280_3_fu_733_p1 = r3_1;

assign xor_ln280_3_fu_733_p2 = (xor_ln280_3_fu_733_p1 ^ xor_ln280_2_fu_727_p2);

assign xor_ln280_4_fu_739_p2 = (xor_ln280_3_fu_733_p2 ^ xor_ln280_1_fu_721_p2);

assign xor_ln280_5_fu_745_p1 = r2_1;

assign xor_ln280_5_fu_745_p2 = (xor_ln280_5_fu_745_p1 ^ p3_comar3_fu_666_p2);

assign xor_ln280_6_fu_751_p2 = (xor_ln280_5_fu_745_p2 ^ p1_comar3_fu_672_p2);

assign xor_ln280_7_fu_757_p2 = (p2_comar3_fu_660_p2 ^ L7_0_fu_684_p2);

assign xor_ln280_8_fu_763_p1 = r1_1;

assign xor_ln280_8_fu_763_p2 = (xor_ln280_8_fu_763_p1 ^ xor_ln280_7_fu_757_p2);

assign xor_ln280_9_fu_769_p2 = (xor_ln280_8_fu_763_p2 ^ xor_ln280_6_fu_751_p2);

assign xor_ln280_fu_775_p2 = (xor_ln280_9_fu_769_p2 ^ xor_ln280_4_fu_739_p2);

assign xor_ln281_1_fu_788_p1 = x2_0;

assign xor_ln281_1_fu_788_p2 = (xor_ln281_1_fu_788_p1 ^ L1_0_fu_198_p2);

assign xor_ln281_2_fu_794_p2 = (T2_0_fu_462_p2 ^ T1_0_fu_600_p2);

assign xor_ln281_fu_800_p2 = (xor_ln281_2_fu_794_p2 ^ xor_ln281_1_fu_788_p2);

assign xor_ln282_fu_813_p2 = (T2_0_fu_462_p2 ^ L5_0_fu_204_p2);

assign xor_ln97_fu_216_p0 = x1_0;

assign xor_ln97_fu_216_p1 = x2_0;

assign xor_ln97_fu_216_p2 = (xor_ln97_fu_216_p1 ^ xor_ln97_fu_216_p0);

endmodule //sbox
