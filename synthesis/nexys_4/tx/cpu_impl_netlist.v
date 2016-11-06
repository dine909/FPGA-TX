// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Sun Nov  6 16:40:29 2016
// Host        : jon-GA-MA770T-ES3 running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -force ./cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : bsp
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD4
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module RAM128X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD10
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD100
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD101
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD102
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD103
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD104
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD105
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD106
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD107
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD108
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD109
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD11
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD110
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD111
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD112
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD113
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD114
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD115
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD116
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD117
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD118
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD119
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD12
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD120
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD121
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD122
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD123
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD124
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD125
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD126
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD127
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD128
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD129
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD13
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD130
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD131
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD132
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD133
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD134
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD135
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD136
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD137
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD138
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD139
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD14
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD140
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD141
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD142
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD143
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD144
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD145
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD146
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD147
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD148
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD149
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD15
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD150
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD151
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD152
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD153
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD154
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD155
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD156
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD157
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD158
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD159
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD16
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD160
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD161
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD162
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD163
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD164
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD165
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD166
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD167
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD168
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD169
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD17
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD170
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD171
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD172
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD173
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD174
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD175
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD176
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD177
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD178
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD179
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD18
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD180
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD181
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD182
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD183
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD184
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD185
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD186
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD187
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD188
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD189
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD19
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD190
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD191
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD192
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD193
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD194
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD195
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD196
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD197
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD198
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD199
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD20
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD200
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD201
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD202
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD203
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD204
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD205
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD206
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD207
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD208
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD209
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD21
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD210
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD211
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD212
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD213
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD214
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD215
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD216
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD217
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD218
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD219
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD22
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD220
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD221
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD222
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD223
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD224
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD225
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD226
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD227
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD228
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD229
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD23
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD230
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD231
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD232
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD233
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD234
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD235
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD236
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD237
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD238
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD239
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD24
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD240
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD241
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD242
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD243
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD244
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD245
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD246
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD247
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD248
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD249
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD25
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD250
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD251
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD252
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD253
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD254
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD255
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD256
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD257
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD258
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD259
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD26
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD260
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD261
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD262
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD27
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD28
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD29
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD30
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD31
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD32
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD33
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD34
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD35
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD36
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD37
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD38
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD39
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD40
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD41
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD42
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD43
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD44
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD45
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD46
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD47
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD48
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD49
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD50
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD51
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD52
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD53
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD54
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD55
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD56
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD57
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD58
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD59
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD60
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD61
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD62
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD63
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD64
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD65
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD66
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD67
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD68
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD69
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD70
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD71
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD72
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD73
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD74
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD75
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD76
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD77
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD78
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD79
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD8
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD80
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD81
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD82
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD83
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD84
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD85
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD86
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD87
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD88
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD89
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD9
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD90
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD91
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD92
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD93
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD94
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD95
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD96
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD97
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD98
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD99
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM32M_HD263
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD264
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD265
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD266
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD267
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD268
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD269
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD270
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD271
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD272
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD273
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD274
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module BRAM
   (DOBDO,
    clk,
    eth_clk_OBUF,
    ADDRBWRADDR,
    pwropt);
  output [3:0]DOBDO;
  input clk;
  input eth_clk_OBUF;
  input [12:0]ADDRBWRADDR;
  input pwropt;

  wire [12:0]ADDRBWRADDR;
  wire [3:0]DOBDO;
  wire MEMORY_reg_0_ENBWREN_cooolgate_en_sig_9;
  wire clk;
  wire eth_clk_OBUF;
  wire pwropt;
  wire NLW_MEMORY_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_MEMORY_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_MEMORY_reg_0_DBITERR_UNCONNECTED;
  wire NLW_MEMORY_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_MEMORY_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_MEMORY_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_MEMORY_reg_0_DOADO_UNCONNECTED;
  wire [31:4]NLW_MEMORY_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_MEMORY_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_MEMORY_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_MEMORY_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_MEMORY_reg_0_RDADDRECC_UNCONNECTED;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENBWREN=NEW" *) 
  (* RTL_RAM_BITS = "60000" *) 
  (* RTL_RAM_NAME = "MEMORY" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    MEMORY_reg_0
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_MEMORY_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_MEMORY_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(eth_clk_OBUF),
        .DBITERR(NLW_MEMORY_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_MEMORY_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_MEMORY_reg_0_DOBDO_UNCONNECTED[31:4],DOBDO}),
        .DOPADOP(NLW_MEMORY_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_MEMORY_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_MEMORY_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(MEMORY_reg_0_ENBWREN_cooolgate_en_sig_9),
        .INJECTDBITERR(NLW_MEMORY_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_MEMORY_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_MEMORY_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_MEMORY_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    MEMORY_reg_0_ENBWREN_cooolgate_en_gate_17
       (.I0(pwropt),
        .O(MEMORY_reg_0_ENBWREN_cooolgate_en_sig_9));
endmodule

module CHARSVGA
   (vga_b_OBUF,
    HSYNCH,
    VSYNCH,
    clk,
    eth_clk_OBUF,
    internal_rst_reg);
  output [0:0]vga_b_OBUF;
  output HSYNCH;
  output VSYNCH;
  input clk;
  input eth_clk_OBUF;
  input internal_rst_reg;

  wire BLANK;
  wire BLANK_DEL;
  wire BLANK_DEL_DEL;
  wire [12:1]CHARADDR;
  wire [3:0]DOUT;
  wire HSYNCH;
  wire HSYNCH_DEL;
  wire INTHSYNCH;
  wire INTVSYNCH;
  wire [2:0]PIXCOL_DEL;
  wire \PIXCOL_DEL_DEL_reg_n_0_[0] ;
  wire \PIXCOL_DEL_DEL_reg_n_0_[1] ;
  wire \PIXCOL_DEL_DEL_reg_n_0_[2] ;
  wire PIXELS_reg_ENARDEN_cooolgate_en_sig_8;
  wire [7:0]PIXELS_reg__0;
  wire [2:0]PIXROW_DEL;
  wire TIMEING1_n_0;
  wire TIMEING1_n_1;
  wire TIMEING1_n_15;
  wire TIMEING1_n_16;
  wire TIMEING1_n_17;
  wire TIMEING1_n_18;
  wire TIMEING1_n_2;
  wire VSYNCH;
  wire VSYNCH_DEL;
  wire clk;
  wire eth_clk_OBUF;
  wire internal_rst_reg;
  wire [0:0]vga_b_OBUF;
  wire \vga_r_OBUF[3]_inst_i_2_n_0 ;
  wire \vga_r_OBUF[3]_inst_i_3_n_0 ;
  wire [15:8]NLW_PIXELS_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_PIXELS_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_PIXELS_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_PIXELS_reg_DOPBDOP_UNCONNECTED;

  FDRE BLANK_DEL_DEL_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(BLANK_DEL),
        .Q(BLANK_DEL_DEL),
        .R(1'b0));
  FDRE BLANK_DEL_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(BLANK),
        .Q(BLANK_DEL),
        .R(1'b0));
  BRAM BRAM_INST_1
       (.ADDRBWRADDR({CHARADDR,TIMEING1_n_15}),
        .DOBDO(DOUT),
        .clk(clk),
        .eth_clk_OBUF(eth_clk_OBUF),
        .pwropt(BLANK));
  FDRE HSYNCH_DEL_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(INTHSYNCH),
        .Q(HSYNCH_DEL),
        .R(1'b0));
  FDRE HSYNCH_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HSYNCH_DEL),
        .Q(HSYNCH),
        .R(1'b0));
  FDRE \PIXCOL_DEL_DEL_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(PIXCOL_DEL[0]),
        .Q(\PIXCOL_DEL_DEL_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \PIXCOL_DEL_DEL_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(PIXCOL_DEL[1]),
        .Q(\PIXCOL_DEL_DEL_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \PIXCOL_DEL_DEL_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(PIXCOL_DEL[2]),
        .Q(\PIXCOL_DEL_DEL_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \PIXCOL_DEL_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_0),
        .Q(PIXCOL_DEL[0]),
        .R(1'b0));
  FDRE \PIXCOL_DEL_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_1),
        .Q(PIXCOL_DEL[1]),
        .R(1'b0));
  FDRE \PIXCOL_DEL_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_2),
        .Q(PIXCOL_DEL[2]),
        .R(1'b0));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "PIXELS" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000143E143E1400000000000000141400000800080808080000000000000000),
    .INIT_09(256'h0000000000000808006C12320C12120C00E2A4E8102E4A8E00081E281C0A3C08),
    .INIT_0A(256'h00101010FE1010100000000022143E0800081020202010080008040202020408),
    .INIT_0B(256'h00000204081020400000080000000000000000003E0000000008080000000000),
    .INIT_0C(256'h00001C222010221C00003E040810221C00003E0808080C0800001C262A2A321C),
    .INIT_0D(256'h000008081020223E00001C221E02221C00001C22203E023E00003C103E121418),
    .INIT_0E(256'h0008080000000800000008000000080000001C22203C221C00001C22221C221C),
    .INIT_0F(256'h000008000818221C000204081008040200003E00003E00000010080402040810),
    .INIT_10(256'h00001C220202221C00001E22221E221E00002222223E221C006CA2BAAABA827C),
    .INIT_11(256'h00001C223A02221C00000202021E023E00003E02021E023E00001E222222221E),
    .INIT_12(256'h000022120A060A1200000C121010103800003E080808083E00002222223E2222),
    .INIT_13(256'h00001C222222221C000022322A262222000022222A2A362200003E0202020202),
    .INIT_14(256'h00001E20201C023C000022120A1E221E00681C222222221C000002021E22221E),
    .INIT_15(256'h0000142A2A222222000008141422222200001C2222222222000008080808083E),
    .INIT_16(256'h001808080808081800003E020408103E00000808081C22220000221408081422),
    .INIT_17(256'h00FF000000000000000000000022140800181010101010180000402010080402),
    .INIT_18(256'h00001C2202021C0000001E22261A020200005C223C201C000000000000001008),
    .INIT_19(256'h001C203C22223C00000002020E02221C00001C023E221C0000003C22322C2020),
    .INIT_1A(256'h000022120E0A1202000C12101018001000001C08080C000800002222261A0202),
    .INIT_1B(256'h00001C2222221C000000242424241A0000002A2A2A2A160000003E080808080C),
    .INIT_1C(256'h00001E201C023C000000040404241A000020203C22322C000002021E22221E00),
    .INIT_1D(256'h0000142A2A222200000008141422220000002C121212120000001C22020E0202),
    .INIT_1E(256'h001008080408081000003E0408103E00001C203C222222000000221408142200),
    .INIT_1F(256'h000000000000000000000060920C000000040808100808040008080808080808),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000143E143E1400000000000000141400000800080808080000000000000000),
    .INIT_29(256'h0000000000000808006C12320C12120C00E2A4E8102E4A8E00081E281C0A3C08),
    .INIT_2A(256'h00101010FE1010100000000022143E0800081020202010080008040202020408),
    .INIT_2B(256'h00000204081020400000080000000000000000003E0000000008080000000000),
    .INIT_2C(256'h00001C222010221C00003E040810221C00003E0808080C0800001C262A2A321C),
    .INIT_2D(256'h000008081020223E00001C221E02221C00001C22203E023E00003C103E121418),
    .INIT_2E(256'h0008080000000800000008000000080000001C22203C221C00001C22221C221C),
    .INIT_2F(256'h000008000818221C000204081008040200003E00003E00000010080402040810),
    .INIT_30(256'h00001C220202221C00001E22221E221E00002222223E221C006CA2BAAABA827C),
    .INIT_31(256'h00001C223A02221C00000202021E023E00003E02021E023E00001E222222221E),
    .INIT_32(256'h000022120A060A1200000C121010103800003E080808083E00002222223E2222),
    .INIT_33(256'h00001C222222221C000022322A262222000022222A2A362200003E0202020202),
    .INIT_34(256'h00001E20201C023C000022120A1E221E00681C222222221C000002021E22221E),
    .INIT_35(256'h0000142A2A222222000008141422222200001C2222222222000008080808083E),
    .INIT_36(256'h001808080808081800003E020408103E00000808081C22220000221408081422),
    .INIT_37(256'h00FF000000000000000000000022140800181010101010180000402010080402),
    .INIT_38(256'h00001C2202021C0000001E22261A020200005C223C201C000000000000001008),
    .INIT_39(256'h001C203C22223C00000002020E02221C00001C023E221C0000003C22322C2020),
    .INIT_3A(256'h000022120E0A1202000C12101018001000001C08080C000800002222261A0202),
    .INIT_3B(256'h00001C2222221C000000242424241A0000002A2A2A2A160000003E080808080C),
    .INIT_3C(256'h00001E201C023C000000040404241A000020203C22322C000002021E22221E00),
    .INIT_3D(256'h0000142A2A222200000008141422220000002C121212120000001C22020E0202),
    .INIT_3E(256'h001008080408081000003E0408103E00001C203C222222000000221408142200),
    .INIT_3F(256'h000000000000000000000060920C000000040808100808040008080808080808),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    PIXELS_reg
       (.ADDRARDADDR({DOUT,DOUT,PIXROW_DEL,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(eth_clk_OBUF),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_PIXELS_reg_DOADO_UNCONNECTED[15:8],PIXELS_reg__0}),
        .DOBDO(NLW_PIXELS_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_PIXELS_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_PIXELS_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(PIXELS_reg_ENARDEN_cooolgate_en_sig_8),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    PIXELS_reg_ENARDEN_cooolgate_en_gate_15
       (.I0(BLANK_DEL),
        .O(PIXELS_reg_ENARDEN_cooolgate_en_sig_8));
  FDRE \PIXROW_DEL_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_16),
        .Q(PIXROW_DEL[0]),
        .R(1'b0));
  FDRE \PIXROW_DEL_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_17),
        .Q(PIXROW_DEL[1]),
        .R(1'b0));
  FDRE \PIXROW_DEL_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(TIMEING1_n_18),
        .Q(PIXROW_DEL[2]),
        .R(1'b0));
  VIDEO_TIME_GEN TIMEING1
       (.ADDRBWRADDR({CHARADDR,TIMEING1_n_15}),
        .BLANK(BLANK),
        .D(TIMEING1_n_18),
        .INTHSYNCH(INTHSYNCH),
        .INTVSYNCH(INTVSYNCH),
        .\PIXCOL_DEL_reg[0] (TIMEING1_n_0),
        .\PIXCOL_DEL_reg[1] (TIMEING1_n_1),
        .\PIXCOL_DEL_reg[2] (TIMEING1_n_2),
        .\PIXROW_DEL_reg[0] (TIMEING1_n_16),
        .\PIXROW_DEL_reg[1] (TIMEING1_n_17),
        .eth_clk_OBUF(eth_clk_OBUF),
        .internal_rst_reg(internal_rst_reg));
  FDRE VSYNCH_DEL_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(INTVSYNCH),
        .Q(VSYNCH_DEL),
        .R(1'b0));
  FDRE VSYNCH_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(VSYNCH_DEL),
        .Q(VSYNCH),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \vga_r_OBUF[3]_inst_i_1 
       (.I0(\vga_r_OBUF[3]_inst_i_2_n_0 ),
        .I1(\PIXCOL_DEL_DEL_reg_n_0_[2] ),
        .I2(\vga_r_OBUF[3]_inst_i_3_n_0 ),
        .I3(BLANK_DEL_DEL),
        .O(vga_b_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r_OBUF[3]_inst_i_2 
       (.I0(PIXELS_reg__0[3]),
        .I1(PIXELS_reg__0[2]),
        .I2(\PIXCOL_DEL_DEL_reg_n_0_[1] ),
        .I3(PIXELS_reg__0[1]),
        .I4(\PIXCOL_DEL_DEL_reg_n_0_[0] ),
        .I5(PIXELS_reg__0[0]),
        .O(\vga_r_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r_OBUF[3]_inst_i_3 
       (.I0(PIXELS_reg__0[7]),
        .I1(PIXELS_reg__0[6]),
        .I2(\PIXCOL_DEL_DEL_reg_n_0_[1] ),
        .I3(PIXELS_reg__0[5]),
        .I4(\PIXCOL_DEL_DEL_reg_n_0_[0] ),
        .I5(PIXELS_reg__0[4]),
        .O(\vga_r_OBUF[3]_inst_i_3_n_0 ));
endmodule

module I2C
   (sda_TRI,
    scl_TRI,
    clk,
    scl_IBUF,
    internal_rst_reg,
    sda_IBUF);
  output sda_TRI;
  output scl_TRI;
  input clk;
  input scl_IBUF;
  input internal_rst_reg;
  input sda_IBUF;

  wire BIT_i_1_n_0;
  wire BIT_i_2_n_0;
  wire BIT_reg_n_0;
  wire [2:0]COUNT;
  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire \COUNT[2]_i_1_n_0 ;
  wire \COUNT[2]_i_2_n_0 ;
  wire [3:0]GET_BIT_RETURN;
  wire \GET_BIT_RETURN[0]_i_1_n_0 ;
  wire \GET_BIT_RETURN[3]_i_1_n_0 ;
  wire SCL_I_D;
  wire SCL_I_SYNCH;
  wire SCL_O_i_1_n_0;
  wire SCL_O_i_2_n_0;
  wire SDA_I_D;
  wire SDA_I_SYNCH;
  wire SDA_O_i_1_n_0;
  wire SDA_O_i_2_n_0;
  wire [3:0]SEND_BIT_RETURN;
  wire \SEND_BIT_RETURN[0]_i_1_n_0 ;
  wire \SEND_BIT_RETURN[3]_i_1_n_0 ;
  wire STARTED;
  wire STARTED_i_1_n_0;
  wire STARTED_i_2_n_0;
  wire STATE;
  wire \STATE[0]_i_2_n_0 ;
  wire \STATE[0]_i_3_n_0 ;
  wire \STATE[1]_i_2_n_0 ;
  wire \STATE[1]_i_3_n_0 ;
  wire \STATE[1]_i_4_n_0 ;
  wire \STATE[2]_i_1_n_0 ;
  wire \STATE[3]_i_2_n_0 ;
  wire \STATE[3]_i_3_n_0 ;
  wire \STATE[4]_i_1_n_0 ;
  wire \STATE[4]_i_2_n_0 ;
  wire \STATE[4]_i_3_n_0 ;
  wire \STATE[4]_i_4_n_0 ;
  wire \STATE[4]_i_5_n_0 ;
  wire \STATE_reg[0]_i_1_n_0 ;
  wire \STATE_reg[1]_i_1_n_0 ;
  wire \STATE_reg[3]_i_1_n_0 ;
  wire \STATE_reg_n_0_[0] ;
  wire \STATE_reg_n_0_[1] ;
  wire \STATE_reg_n_0_[2] ;
  wire \STATE_reg_n_0_[3] ;
  wire \STATE_reg_n_0_[4] ;
  wire S_I2C_IN_ACK_i_1_n_0;
  wire S_I2C_IN_ACK_reg_n_0;
  wire S_I2C_OUT_STB_i_1_n_0;
  wire S_I2C_OUT_STB_reg_n_0;
  wire [12:3]TIMER;
  wire \TIMER[0]_i_1__2_n_0 ;
  wire \TIMER[10]_i_1_n_0 ;
  wire \TIMER[11]_i_1_n_0 ;
  wire \TIMER[11]_i_4_n_0 ;
  wire \TIMER[11]_i_5_n_0 ;
  wire \TIMER[11]_i_6_n_0 ;
  wire \TIMER[11]_i_7_n_0 ;
  wire \TIMER[11]_i_8_n_0 ;
  wire \TIMER[11]_i_9_n_0 ;
  wire \TIMER[1]_i_1__2_n_0 ;
  wire \TIMER[2]_i_1__2_n_0 ;
  wire \TIMER[4]_i_1__2_n_0 ;
  wire \TIMER[4]_i_3_n_0 ;
  wire \TIMER[4]_i_4_n_0 ;
  wire \TIMER[4]_i_5_n_0 ;
  wire \TIMER[4]_i_6_n_0 ;
  wire \TIMER[5]_i_1__2_n_0 ;
  wire \TIMER[6]_i_1__2_n_0 ;
  wire \TIMER[6]_i_3_n_0 ;
  wire \TIMER[6]_i_4_n_0 ;
  wire \TIMER[6]_i_5_n_0 ;
  wire \TIMER[6]_i_6_n_0 ;
  wire \TIMER_reg[4]_i_2_n_0 ;
  wire \TIMER_reg[6]_i_2_n_0 ;
  wire \TIMER_reg_n_0_[0] ;
  wire \TIMER_reg_n_0_[10] ;
  wire \TIMER_reg_n_0_[11] ;
  wire \TIMER_reg_n_0_[12] ;
  wire \TIMER_reg_n_0_[1] ;
  wire \TIMER_reg_n_0_[2] ;
  wire \TIMER_reg_n_0_[3] ;
  wire \TIMER_reg_n_0_[4] ;
  wire \TIMER_reg_n_0_[5] ;
  wire \TIMER_reg_n_0_[6] ;
  wire \TIMER_reg_n_0_[7] ;
  wire \TIMER_reg_n_0_[8] ;
  wire \TIMER_reg_n_0_[9] ;
  wire clk;
  wire [12:1]data0;
  wire g0_b0__0__0_n_0;
  wire g0_b0__0_n_0;
  wire internal_rst_reg;
  wire scl_IBUF;
  wire scl_TRI;
  wire sda_IBUF;
  wire sda_TRI;
  wire [3:0]\NLW_TIMER_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_TIMER_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_TIMER_reg[6]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8F80)) 
    BIT_i_1
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(SDA_I_SYNCH),
        .I2(BIT_i_2_n_0),
        .I3(BIT_reg_n_0),
        .O(BIT_i_1_n_0));
  LUT5 #(
    .INIT(32'h01100008)) 
    BIT_i_2
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[4] ),
        .I4(\STATE_reg_n_0_[1] ),
        .O(BIT_i_2_n_0));
  FDRE BIT_reg
       (.C(clk),
        .CE(1'b1),
        .D(BIT_i_1_n_0),
        .Q(BIT_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h1FF0)) 
    \COUNT[0]_i_1 
       (.I0(\STATE_reg_n_0_[2] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(\COUNT[2]_i_2_n_0 ),
        .I3(COUNT[0]),
        .O(\COUNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hF1FF1F00)) 
    \COUNT[1]_i_1 
       (.I0(\STATE_reg_n_0_[2] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(COUNT[0]),
        .I3(\COUNT[2]_i_2_n_0 ),
        .I4(COUNT[1]),
        .O(\COUNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFF111F0000)) 
    \COUNT[2]_i_1 
       (.I0(\STATE_reg_n_0_[2] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(\COUNT[2]_i_2_n_0 ),
        .I5(COUNT[2]),
        .O(\COUNT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000041)) 
    \COUNT[2]_i_2 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .O(\COUNT[2]_i_2_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .Q(COUNT[0]),
        .R(1'b0));
  FDRE \COUNT_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(COUNT[1]),
        .R(1'b0));
  FDRE \COUNT_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT[2]_i_1_n_0 ),
        .Q(COUNT[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00000100)) 
    \GET_BIT_RETURN[0]_i_1 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(GET_BIT_RETURN[0]),
        .O(\GET_BIT_RETURN[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00400000)) 
    \GET_BIT_RETURN[3]_i_1 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(GET_BIT_RETURN[3]),
        .O(\GET_BIT_RETURN[3]_i_1_n_0 ));
  FDRE \GET_BIT_RETURN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\GET_BIT_RETURN[0]_i_1_n_0 ),
        .Q(GET_BIT_RETURN[0]),
        .R(1'b0));
  FDRE \GET_BIT_RETURN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\GET_BIT_RETURN[3]_i_1_n_0 ),
        .Q(GET_BIT_RETURN[3]),
        .R(1'b0));
  FDRE SCL_I_D_reg
       (.C(clk),
        .CE(1'b1),
        .D(scl_IBUF),
        .Q(SCL_I_D),
        .R(1'b0));
  FDRE SCL_I_SYNCH_reg
       (.C(clk),
        .CE(1'b1),
        .D(SCL_I_D),
        .Q(SCL_I_SYNCH),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h403FFFFF403F0000)) 
    SCL_O_i_1
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(SCL_O_i_2_n_0),
        .I5(scl_TRI),
        .O(SCL_O_i_1_n_0));
  LUT6 #(
    .INIT(64'hF3CC808800882088)) 
    SCL_O_i_2
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[0] ),
        .I2(STATE),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[3] ),
        .I5(\STATE_reg_n_0_[2] ),
        .O(SCL_O_i_2_n_0));
  FDSE SCL_O_reg
       (.C(clk),
        .CE(1'b1),
        .D(SCL_O_i_1_n_0),
        .Q(scl_TRI),
        .S(internal_rst_reg));
  FDRE SDA_I_D_reg
       (.C(clk),
        .CE(1'b1),
        .D(sda_IBUF),
        .Q(SDA_I_D),
        .R(1'b0));
  FDRE SDA_I_SYNCH_reg
       (.C(clk),
        .CE(1'b1),
        .D(SDA_I_D),
        .Q(SDA_I_SYNCH),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAD5FFFFAAD50000)) 
    SDA_O_i_1
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(BIT_reg_n_0),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(SDA_O_i_2_n_0),
        .I5(sda_TRI),
        .O(SDA_O_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A8A848444040404)) 
    SDA_O_i_2
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(\STATE_reg_n_0_[4] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(STATE),
        .I4(\STATE_reg_n_0_[3] ),
        .I5(\STATE_reg_n_0_[2] ),
        .O(SDA_O_i_2_n_0));
  FDSE SDA_O_reg
       (.C(clk),
        .CE(1'b1),
        .D(SDA_O_i_1_n_0),
        .Q(sda_TRI),
        .S(internal_rst_reg));
  LUT6 #(
    .INIT(64'hFFFBFFFF00001000)) 
    \SEND_BIT_RETURN[0]_i_1 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(SEND_BIT_RETURN[0]),
        .O(\SEND_BIT_RETURN[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00040000)) 
    \SEND_BIT_RETURN[3]_i_1 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(SEND_BIT_RETURN[3]),
        .O(\SEND_BIT_RETURN[3]_i_1_n_0 ));
  FDRE \SEND_BIT_RETURN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\SEND_BIT_RETURN[0]_i_1_n_0 ),
        .Q(SEND_BIT_RETURN[0]),
        .R(1'b0));
  FDRE \SEND_BIT_RETURN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\SEND_BIT_RETURN[3]_i_1_n_0 ),
        .Q(SEND_BIT_RETURN[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7EFEFFFF40000000)) 
    STARTED_i_1
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE_reg_n_0_[4] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(STATE),
        .I4(STARTED_i_2_n_0),
        .I5(STARTED),
        .O(STARTED_i_1_n_0));
  LUT4 #(
    .INIT(16'hEAAB)) 
    STARTED_i_2
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE_reg_n_0_[0] ),
        .O(STARTED_i_2_n_0));
  FDRE STARTED_reg
       (.C(clk),
        .CE(1'b1),
        .D(STARTED_i_1_n_0),
        .Q(STARTED),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB30CFCCF)) 
    \STATE[0]_i_2 
       (.I0(SEND_BIT_RETURN[0]),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[0] ),
        .O(\STATE[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010000077667777)) 
    \STATE[0]_i_3 
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(STARTED),
        .I3(GET_BIT_RETURN[0]),
        .I4(\STATE_reg_n_0_[1] ),
        .I5(\STATE_reg_n_0_[0] ),
        .O(\STATE[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0A8E5A0)) 
    \STATE[1]_i_2 
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE[1]_i_4_n_0 ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[0] ),
        .I4(\STATE_reg_n_0_[1] ),
        .O(\STATE[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10776600)) 
    \STATE[1]_i_3 
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(STARTED),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[0] ),
        .O(\STATE[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \STATE[1]_i_4 
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(COUNT[2]),
        .O(\STATE[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40AA5F0A5F500A00)) 
    \STATE[2]_i_1 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(SEND_BIT_RETURN[0]),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(\STATE_reg_n_0_[1] ),
        .O(\STATE[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80F0FF30)) 
    \STATE[3]_i_2 
       (.I0(SEND_BIT_RETURN[3]),
        .I1(\STATE_reg_n_0_[2] ),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[0] ),
        .O(\STATE[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AEAA)) 
    \STATE[3]_i_3 
       (.I0(\STATE_reg_n_0_[3] ),
        .I1(GET_BIT_RETURN[3]),
        .I2(\STATE_reg_n_0_[0] ),
        .I3(\STATE_reg_n_0_[1] ),
        .I4(\STATE_reg_n_0_[2] ),
        .O(\STATE[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \STATE[4]_i_1 
       (.I0(\STATE[4]_i_3_n_0 ),
        .I1(\STATE[4]_i_4_n_0 ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE[4]_i_5_n_0 ),
        .O(\STATE[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0E282A3A)) 
    \STATE[4]_i_2 
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[0] ),
        .I4(\STATE_reg_n_0_[1] ),
        .O(\STATE[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA3BBA38B3CBB30BB)) 
    \STATE[4]_i_3 
       (.I0(STATE),
        .I1(\STATE_reg_n_0_[4] ),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[0] ),
        .I4(SCL_I_SYNCH),
        .I5(\STATE_reg_n_0_[2] ),
        .O(\STATE[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h03F3F32303230323)) 
    \STATE[4]_i_4 
       (.I0(S_I2C_IN_ACK_reg_n_0),
        .I1(\STATE_reg_n_0_[4] ),
        .I2(\STATE_reg_n_0_[0] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[3] ),
        .I5(SCL_I_SYNCH),
        .O(\STATE[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888A88808A8A8A80)) 
    \STATE[4]_i_5 
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(STATE),
        .I2(\STATE_reg_n_0_[3] ),
        .I3(\STATE_reg_n_0_[4] ),
        .I4(S_I2C_OUT_STB_reg_n_0),
        .I5(\STATE_reg_n_0_[2] ),
        .O(\STATE[4]_i_5_n_0 ));
  FDRE \STATE_reg[0] 
       (.C(clk),
        .CE(\STATE[4]_i_1_n_0 ),
        .D(\STATE_reg[0]_i_1_n_0 ),
        .Q(\STATE_reg_n_0_[0] ),
        .R(internal_rst_reg));
  MUXF7 \STATE_reg[0]_i_1 
       (.I0(\STATE[0]_i_2_n_0 ),
        .I1(\STATE[0]_i_3_n_0 ),
        .O(\STATE_reg[0]_i_1_n_0 ),
        .S(\STATE_reg_n_0_[4] ));
  FDRE \STATE_reg[1] 
       (.C(clk),
        .CE(\STATE[4]_i_1_n_0 ),
        .D(\STATE_reg[1]_i_1_n_0 ),
        .Q(\STATE_reg_n_0_[1] ),
        .R(internal_rst_reg));
  MUXF7 \STATE_reg[1]_i_1 
       (.I0(\STATE[1]_i_2_n_0 ),
        .I1(\STATE[1]_i_3_n_0 ),
        .O(\STATE_reg[1]_i_1_n_0 ),
        .S(\STATE_reg_n_0_[4] ));
  FDRE \STATE_reg[2] 
       (.C(clk),
        .CE(\STATE[4]_i_1_n_0 ),
        .D(\STATE[2]_i_1_n_0 ),
        .Q(\STATE_reg_n_0_[2] ),
        .R(internal_rst_reg));
  FDRE \STATE_reg[3] 
       (.C(clk),
        .CE(\STATE[4]_i_1_n_0 ),
        .D(\STATE_reg[3]_i_1_n_0 ),
        .Q(\STATE_reg_n_0_[3] ),
        .R(internal_rst_reg));
  MUXF7 \STATE_reg[3]_i_1 
       (.I0(\STATE[3]_i_2_n_0 ),
        .I1(\STATE[3]_i_3_n_0 ),
        .O(\STATE_reg[3]_i_1_n_0 ),
        .S(\STATE_reg_n_0_[4] ));
  FDRE \STATE_reg[4] 
       (.C(clk),
        .CE(\STATE[4]_i_1_n_0 ),
        .D(\STATE[4]_i_2_n_0 ),
        .Q(\STATE_reg_n_0_[4] ),
        .R(internal_rst_reg));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    S_I2C_IN_ACK_i_1
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(S_I2C_IN_ACK_reg_n_0),
        .O(S_I2C_IN_ACK_i_1_n_0));
  FDRE S_I2C_IN_ACK_reg
       (.C(clk),
        .CE(1'b1),
        .D(S_I2C_IN_ACK_i_1_n_0),
        .Q(S_I2C_IN_ACK_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    S_I2C_OUT_STB_i_1
       (.I0(\STATE_reg_n_0_[4] ),
        .I1(\STATE_reg_n_0_[3] ),
        .I2(\STATE_reg_n_0_[1] ),
        .I3(\STATE_reg_n_0_[2] ),
        .I4(\STATE_reg_n_0_[0] ),
        .I5(S_I2C_OUT_STB_reg_n_0),
        .O(S_I2C_OUT_STB_i_1_n_0));
  FDRE S_I2C_OUT_STB_reg
       (.C(clk),
        .CE(1'b1),
        .D(S_I2C_OUT_STB_i_1_n_0),
        .Q(S_I2C_OUT_STB_reg_n_0),
        .R(internal_rst_reg));
  LUT2 #(
    .INIT(4'h1)) 
    \TIMER[0]_i_1__2 
       (.I0(\TIMER_reg_n_0_[0] ),
        .I1(STATE),
        .O(\TIMER[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[10]_i_1 
       (.I0(data0[10]),
        .I1(STATE),
        .O(\TIMER[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[11]_i_1 
       (.I0(data0[11]),
        .I1(STATE),
        .O(\TIMER[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \TIMER[11]_i_3 
       (.I0(\TIMER[11]_i_8_n_0 ),
        .I1(\TIMER[11]_i_9_n_0 ),
        .I2(\TIMER_reg_n_0_[6] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .I5(\TIMER_reg_n_0_[5] ),
        .O(STATE));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[11]_i_4 
       (.I0(\TIMER_reg_n_0_[12] ),
        .O(\TIMER[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[11]_i_5 
       (.I0(\TIMER_reg_n_0_[11] ),
        .O(\TIMER[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[11]_i_6 
       (.I0(\TIMER_reg_n_0_[10] ),
        .O(\TIMER[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[11]_i_7 
       (.I0(\TIMER_reg_n_0_[9] ),
        .O(\TIMER[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[11]_i_8 
       (.I0(\TIMER_reg_n_0_[11] ),
        .I1(\TIMER_reg_n_0_[9] ),
        .I2(\TIMER_reg_n_0_[8] ),
        .I3(\TIMER_reg_n_0_[12] ),
        .I4(\TIMER_reg_n_0_[10] ),
        .O(\TIMER[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TIMER[11]_i_9 
       (.I0(\TIMER_reg_n_0_[2] ),
        .I1(\TIMER_reg_n_0_[3] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[1] ),
        .O(\TIMER[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TIMER[12]_i_1 
       (.I0(data0[12]),
        .I1(STATE),
        .O(TIMER[12]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[1]_i_1__2 
       (.I0(data0[1]),
        .I1(STATE),
        .O(\TIMER[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[2]_i_1__2 
       (.I0(data0[2]),
        .I1(STATE),
        .O(\TIMER[2]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TIMER[3]_i_1 
       (.I0(data0[3]),
        .I1(STATE),
        .O(TIMER[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[4]_i_1__2 
       (.I0(data0[4]),
        .I1(STATE),
        .O(\TIMER[4]_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[4]_i_3 
       (.I0(\TIMER_reg_n_0_[4] ),
        .O(\TIMER[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[4]_i_4 
       (.I0(\TIMER_reg_n_0_[3] ),
        .O(\TIMER[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[4]_i_5 
       (.I0(\TIMER_reg_n_0_[2] ),
        .O(\TIMER[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[4]_i_6 
       (.I0(\TIMER_reg_n_0_[1] ),
        .O(\TIMER[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[5]_i_1__2 
       (.I0(data0[5]),
        .I1(STATE),
        .O(\TIMER[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TIMER[6]_i_1__2 
       (.I0(data0[6]),
        .I1(STATE),
        .O(\TIMER[6]_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[6]_i_3 
       (.I0(\TIMER_reg_n_0_[8] ),
        .O(\TIMER[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[6]_i_4 
       (.I0(\TIMER_reg_n_0_[7] ),
        .O(\TIMER[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[6]_i_5 
       (.I0(\TIMER_reg_n_0_[6] ),
        .O(\TIMER[6]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[6]_i_6 
       (.I0(\TIMER_reg_n_0_[5] ),
        .O(\TIMER[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TIMER[7]_i_1 
       (.I0(data0[7]),
        .I1(STATE),
        .O(TIMER[7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TIMER[8]_i_1 
       (.I0(data0[8]),
        .I1(STATE),
        .O(TIMER[8]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TIMER[9]_i_1 
       (.I0(data0[9]),
        .I1(STATE),
        .O(TIMER[9]));
  FDRE \TIMER_reg[0] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[0]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[0] ),
        .R(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[10] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[10]_i_1_n_0 ),
        .Q(\TIMER_reg_n_0_[10] ),
        .R(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[11] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[11]_i_1_n_0 ),
        .Q(\TIMER_reg_n_0_[11] ),
        .R(g0_b0__0__0_n_0));
  CARRY4 \TIMER_reg[11]_i_2 
       (.CI(\TIMER_reg[6]_i_2_n_0 ),
        .CO(\NLW_TIMER_reg[11]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\TIMER_reg_n_0_[11] ,\TIMER_reg_n_0_[10] ,\TIMER_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({\TIMER[11]_i_4_n_0 ,\TIMER[11]_i_5_n_0 ,\TIMER[11]_i_6_n_0 ,\TIMER[11]_i_7_n_0 }));
  FDSE \TIMER_reg[12] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(TIMER[12]),
        .Q(\TIMER_reg_n_0_[12] ),
        .S(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[1] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[1]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[1] ),
        .R(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[2] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[2]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[2] ),
        .R(g0_b0__0__0_n_0));
  FDSE \TIMER_reg[3] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(TIMER[3]),
        .Q(\TIMER_reg_n_0_[3] ),
        .S(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[4] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[4]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[4] ),
        .R(g0_b0__0__0_n_0));
  CARRY4 \TIMER_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\TIMER_reg[4]_i_2_n_0 ,\NLW_TIMER_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\TIMER_reg_n_0_[0] ),
        .DI({\TIMER_reg_n_0_[4] ,\TIMER_reg_n_0_[3] ,\TIMER_reg_n_0_[2] ,\TIMER_reg_n_0_[1] }),
        .O(data0[4:1]),
        .S({\TIMER[4]_i_3_n_0 ,\TIMER[4]_i_4_n_0 ,\TIMER[4]_i_5_n_0 ,\TIMER[4]_i_6_n_0 }));
  FDRE \TIMER_reg[5] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[5]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[5] ),
        .R(g0_b0__0__0_n_0));
  FDRE \TIMER_reg[6] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(\TIMER[6]_i_1__2_n_0 ),
        .Q(\TIMER_reg_n_0_[6] ),
        .R(g0_b0__0__0_n_0));
  CARRY4 \TIMER_reg[6]_i_2 
       (.CI(\TIMER_reg[4]_i_2_n_0 ),
        .CO({\TIMER_reg[6]_i_2_n_0 ,\NLW_TIMER_reg[6]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\TIMER_reg_n_0_[8] ,\TIMER_reg_n_0_[7] ,\TIMER_reg_n_0_[6] ,\TIMER_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({\TIMER[6]_i_3_n_0 ,\TIMER[6]_i_4_n_0 ,\TIMER[6]_i_5_n_0 ,\TIMER[6]_i_6_n_0 }));
  FDSE \TIMER_reg[7] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(TIMER[7]),
        .Q(\TIMER_reg_n_0_[7] ),
        .S(g0_b0__0__0_n_0));
  FDSE \TIMER_reg[8] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(TIMER[8]),
        .Q(\TIMER_reg_n_0_[8] ),
        .S(g0_b0__0__0_n_0));
  FDSE \TIMER_reg[9] 
       (.C(clk),
        .CE(g0_b0__0_n_0),
        .D(TIMER[9]),
        .Q(\TIMER_reg_n_0_[9] ),
        .S(g0_b0__0__0_n_0));
  LUT5 #(
    .INIT(32'h1DD5A001)) 
    g0_b0__0
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[3] ),
        .I4(\STATE_reg_n_0_[4] ),
        .O(g0_b0__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    g0_b0__0__0
       (.I0(\STATE_reg_n_0_[0] ),
        .I1(\STATE_reg_n_0_[1] ),
        .I2(\STATE_reg_n_0_[2] ),
        .I3(\STATE_reg_n_0_[3] ),
        .I4(\STATE_reg_n_0_[4] ),
        .O(g0_b0__0__0_n_0));
endmodule

module PWM
   (led_r_pwm_OBUF,
    clk);
  output led_r_pwm_OBUF;
  input clk;

  wire COUNT;
  wire \COUNT[0]_i_1__0_n_0 ;
  wire \COUNT[1]_i_1__0_n_0 ;
  wire \COUNT[1]_i_2_n_0 ;
  wire \COUNT[2]_i_1__0_n_0 ;
  wire \COUNT[3]_i_1_n_0 ;
  wire \COUNT[3]_i_2_n_0 ;
  wire \COUNT[4]_i_1_n_0 ;
  wire \COUNT[5]_i_1_n_0 ;
  wire \COUNT[6]_i_1_n_0 ;
  wire \COUNT[7]_i_2_n_0 ;
  wire \COUNT[7]_i_3_n_0 ;
  wire \COUNT_reg_n_0_[0] ;
  wire \COUNT_reg_n_0_[1] ;
  wire \COUNT_reg_n_0_[2] ;
  wire \COUNT_reg_n_0_[3] ;
  wire \COUNT_reg_n_0_[4] ;
  wire \COUNT_reg_n_0_[5] ;
  wire \COUNT_reg_n_0_[6] ;
  wire \COUNT_reg_n_0_[7] ;
  wire OUT_BIT_i_10_n_0;
  wire OUT_BIT_i_1_n_0;
  wire OUT_BIT_i_3_n_0;
  wire OUT_BIT_i_4_n_0;
  wire OUT_BIT_i_5_n_0;
  wire OUT_BIT_i_6_n_0;
  wire OUT_BIT_i_7_n_0;
  wire OUT_BIT_i_8_n_0;
  wire OUT_BIT_i_9_n_0;
  wire [9:0]TIMER;
  wire \TIMER[4]_i_2_n_0 ;
  wire \TIMER[9]_i_2_n_0 ;
  wire \TIMER_reg_n_0_[0] ;
  wire \TIMER_reg_n_0_[1] ;
  wire \TIMER_reg_n_0_[2] ;
  wire \TIMER_reg_n_0_[3] ;
  wire \TIMER_reg_n_0_[4] ;
  wire \TIMER_reg_n_0_[5] ;
  wire \TIMER_reg_n_0_[6] ;
  wire \TIMER_reg_n_0_[7] ;
  wire \TIMER_reg_n_0_[8] ;
  wire \TIMER_reg_n_0_[9] ;
  wire clk;
  wire led_r_pwm_OBUF;
  wire p_0_in;
  wire [2:0]NLW_OUT_BIT_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_OUT_BIT_reg_i_2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \COUNT[0]_i_1__0 
       (.I0(\COUNT[7]_i_3_n_0 ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT_reg_n_0_[4] ),
        .I4(\COUNT_reg_n_0_[7] ),
        .I5(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \COUNT[1]_i_1__0 
       (.I0(\COUNT[1]_i_2_n_0 ),
        .I1(\COUNT_reg_n_0_[3] ),
        .I2(\COUNT_reg_n_0_[2] ),
        .I3(\COUNT_reg_n_0_[1] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .O(\COUNT[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[1]_i_2 
       (.I0(\COUNT_reg_n_0_[5] ),
        .I1(\COUNT_reg_n_0_[4] ),
        .I2(\COUNT_reg_n_0_[7] ),
        .I3(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hFFC011C0)) 
    \COUNT[2]_i_1__0 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .I3(\COUNT_reg_n_0_[2] ),
        .I4(\COUNT[3]_i_2_n_0 ),
        .O(\COUNT[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hFF805580)) 
    \COUNT[3]_i_1 
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .I2(\COUNT_reg_n_0_[0] ),
        .I3(\COUNT_reg_n_0_[3] ),
        .I4(\COUNT[3]_i_2_n_0 ),
        .O(\COUNT[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \COUNT[3]_i_2 
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT_reg_n_0_[4] ),
        .I3(\COUNT_reg_n_0_[7] ),
        .I4(\COUNT_reg_n_0_[6] ),
        .I5(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \COUNT[4]_i_1 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[6] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT[7]_i_3_n_0 ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \COUNT[5]_i_1 
       (.I0(\COUNT[7]_i_3_n_0 ),
        .I1(\COUNT_reg_n_0_[7] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT_reg_n_0_[0] ),
        .I4(\COUNT_reg_n_0_[4] ),
        .I5(\COUNT_reg_n_0_[5] ),
        .O(\COUNT[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \COUNT[6]_i_1 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT[7]_i_3_n_0 ),
        .I4(\COUNT_reg_n_0_[5] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[7]_i_1 
       (.I0(\TIMER_reg_n_0_[9] ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .I5(\TIMER[9]_i_2_n_0 ),
        .O(COUNT));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \COUNT[7]_i_2 
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT[7]_i_3_n_0 ),
        .I3(\COUNT_reg_n_0_[6] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[7] ),
        .O(\COUNT[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \COUNT[7]_i_3 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[2] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[0] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[0]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[1]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[2]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[3]_i_1_n_0 ),
        .Q(\COUNT_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[4] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[4]_i_1_n_0 ),
        .Q(\COUNT_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[5] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[5]_i_1_n_0 ),
        .Q(\COUNT_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[6] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[6]_i_1_n_0 ),
        .Q(\COUNT_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[7] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[7]_i_2_n_0 ),
        .Q(\COUNT_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    OUT_BIT_i_1
       (.I0(p_0_in),
        .O(OUT_BIT_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_10
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_3
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_4
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_5
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_6
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_7
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_8
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_9
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_9_n_0));
  FDRE OUT_BIT_reg
       (.C(clk),
        .CE(1'b1),
        .D(OUT_BIT_i_1_n_0),
        .Q(led_r_pwm_OBUF),
        .R(1'b0));
  CARRY4 OUT_BIT_reg_i_2
       (.CI(1'b0),
        .CO({p_0_in,NLW_OUT_BIT_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({OUT_BIT_i_3_n_0,OUT_BIT_i_4_n_0,OUT_BIT_i_5_n_0,OUT_BIT_i_6_n_0}),
        .O(NLW_OUT_BIT_reg_i_2_O_UNCONNECTED[3:0]),
        .S({OUT_BIT_i_7_n_0,OUT_BIT_i_8_n_0,OUT_BIT_i_9_n_0,OUT_BIT_i_10_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[0]_i_1 
       (.I0(\TIMER_reg_n_0_[0] ),
        .O(TIMER[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \TIMER[1]_i_1 
       (.I0(\TIMER_reg_n_0_[1] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .O(TIMER[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \TIMER[2]_i_1 
       (.I0(\TIMER_reg_n_0_[2] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .O(TIMER[2]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \TIMER[3]_i_1__0 
       (.I0(\TIMER[4]_i_2_n_0 ),
        .I1(\TIMER_reg_n_0_[4] ),
        .I2(\TIMER_reg_n_0_[3] ),
        .I3(\TIMER_reg_n_0_[1] ),
        .I4(\TIMER_reg_n_0_[0] ),
        .I5(\TIMER_reg_n_0_[2] ),
        .O(TIMER[3]));
  LUT6 #(
    .INIT(64'hFFFE0001FFFE0000)) 
    \TIMER[4]_i_1 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .I5(\TIMER[4]_i_2_n_0 ),
        .O(TIMER[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[4]_i_2 
       (.I0(\TIMER_reg_n_0_[8] ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .I4(\TIMER_reg_n_0_[9] ),
        .O(\TIMER[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \TIMER[5]_i_1 
       (.I0(\TIMER_reg_n_0_[5] ),
        .I1(\TIMER_reg_n_0_[3] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .I3(\TIMER_reg_n_0_[0] ),
        .I4(\TIMER_reg_n_0_[2] ),
        .I5(\TIMER_reg_n_0_[4] ),
        .O(TIMER[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \TIMER[6]_i_1 
       (.I0(\TIMER[9]_i_2_n_0 ),
        .I1(\TIMER_reg_n_0_[5] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .O(TIMER[6]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \TIMER[7]_i_1__0 
       (.I0(\TIMER[9]_i_2_n_0 ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .O(TIMER[7]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \TIMER[8]_i_1__0 
       (.I0(\TIMER[9]_i_2_n_0 ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .O(TIMER[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \TIMER[9]_i_1__0 
       (.I0(\TIMER[9]_i_2_n_0 ),
        .I1(\TIMER_reg_n_0_[8] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .I3(\TIMER_reg_n_0_[5] ),
        .I4(\TIMER_reg_n_0_[7] ),
        .I5(\TIMER_reg_n_0_[9] ),
        .O(TIMER[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[9]_i_2 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .O(\TIMER[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[0]),
        .Q(\TIMER_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[1]),
        .Q(\TIMER_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[2]),
        .Q(\TIMER_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[3]),
        .Q(\TIMER_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[4]),
        .Q(\TIMER_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[5]),
        .Q(\TIMER_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[6]),
        .Q(\TIMER_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[7]),
        .Q(\TIMER_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[8]),
        .Q(\TIMER_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[9]),
        .Q(\TIMER_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_0
   (led_g_pwm_OBUF,
    clk);
  output led_g_pwm_OBUF;
  input clk;

  wire COUNT;
  wire \COUNT[0]_i_1__1_n_0 ;
  wire \COUNT[1]_i_1__1_n_0 ;
  wire \COUNT[1]_i_2__0_n_0 ;
  wire \COUNT[2]_i_1__1_n_0 ;
  wire \COUNT[3]_i_1__0_n_0 ;
  wire \COUNT[3]_i_2__0_n_0 ;
  wire \COUNT[4]_i_1__0_n_0 ;
  wire \COUNT[5]_i_1__0_n_0 ;
  wire \COUNT[6]_i_1__0_n_0 ;
  wire \COUNT[7]_i_2__0_n_0 ;
  wire \COUNT[7]_i_3__0_n_0 ;
  wire \COUNT_reg_n_0_[0] ;
  wire \COUNT_reg_n_0_[1] ;
  wire \COUNT_reg_n_0_[2] ;
  wire \COUNT_reg_n_0_[3] ;
  wire \COUNT_reg_n_0_[4] ;
  wire \COUNT_reg_n_0_[5] ;
  wire \COUNT_reg_n_0_[6] ;
  wire \COUNT_reg_n_0_[7] ;
  wire OUT_BIT_i_10__0_n_0;
  wire OUT_BIT_i_1__0_n_0;
  wire OUT_BIT_i_3__0_n_0;
  wire OUT_BIT_i_4__0_n_0;
  wire OUT_BIT_i_5__0_n_0;
  wire OUT_BIT_i_6__0_n_0;
  wire OUT_BIT_i_7__0_n_0;
  wire OUT_BIT_i_8__0_n_0;
  wire OUT_BIT_i_9__0_n_0;
  wire [9:0]TIMER;
  wire \TIMER[4]_i_2__0_n_0 ;
  wire \TIMER[9]_i_2__0_n_0 ;
  wire \TIMER_reg_n_0_[0] ;
  wire \TIMER_reg_n_0_[1] ;
  wire \TIMER_reg_n_0_[2] ;
  wire \TIMER_reg_n_0_[3] ;
  wire \TIMER_reg_n_0_[4] ;
  wire \TIMER_reg_n_0_[5] ;
  wire \TIMER_reg_n_0_[6] ;
  wire \TIMER_reg_n_0_[7] ;
  wire \TIMER_reg_n_0_[8] ;
  wire \TIMER_reg_n_0_[9] ;
  wire clk;
  wire led_g_pwm_OBUF;
  wire p_0_in;
  wire [2:0]NLW_OUT_BIT_reg_i_2__0_CO_UNCONNECTED;
  wire [3:0]NLW_OUT_BIT_reg_i_2__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \COUNT[0]_i_1__1 
       (.I0(\COUNT[7]_i_3__0_n_0 ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT_reg_n_0_[4] ),
        .I4(\COUNT_reg_n_0_[7] ),
        .I5(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \COUNT[1]_i_1__1 
       (.I0(\COUNT[1]_i_2__0_n_0 ),
        .I1(\COUNT_reg_n_0_[3] ),
        .I2(\COUNT_reg_n_0_[2] ),
        .I3(\COUNT_reg_n_0_[1] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .O(\COUNT[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[1]_i_2__0 
       (.I0(\COUNT_reg_n_0_[5] ),
        .I1(\COUNT_reg_n_0_[4] ),
        .I2(\COUNT_reg_n_0_[7] ),
        .I3(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hFFC011C0)) 
    \COUNT[2]_i_1__1 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .I3(\COUNT_reg_n_0_[2] ),
        .I4(\COUNT[3]_i_2__0_n_0 ),
        .O(\COUNT[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hFF805580)) 
    \COUNT[3]_i_1__0 
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .I2(\COUNT_reg_n_0_[0] ),
        .I3(\COUNT_reg_n_0_[3] ),
        .I4(\COUNT[3]_i_2__0_n_0 ),
        .O(\COUNT[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \COUNT[3]_i_2__0 
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT_reg_n_0_[4] ),
        .I3(\COUNT_reg_n_0_[7] ),
        .I4(\COUNT_reg_n_0_[6] ),
        .I5(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \COUNT[4]_i_1__0 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[6] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT[7]_i_3__0_n_0 ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \COUNT[5]_i_1__0 
       (.I0(\COUNT[7]_i_3__0_n_0 ),
        .I1(\COUNT_reg_n_0_[7] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT_reg_n_0_[0] ),
        .I4(\COUNT_reg_n_0_[4] ),
        .I5(\COUNT_reg_n_0_[5] ),
        .O(\COUNT[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \COUNT[6]_i_1__0 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT[7]_i_3__0_n_0 ),
        .I4(\COUNT_reg_n_0_[5] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[7]_i_1__0 
       (.I0(\TIMER_reg_n_0_[9] ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .I5(\TIMER[9]_i_2__0_n_0 ),
        .O(COUNT));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \COUNT[7]_i_2__0 
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT[7]_i_3__0_n_0 ),
        .I3(\COUNT_reg_n_0_[6] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[7] ),
        .O(\COUNT[7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \COUNT[7]_i_3__0 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[2] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[0] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[0]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[1]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[2]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[3]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[4] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[4]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[5] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[5]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[6] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[6]_i_1__0_n_0 ),
        .Q(\COUNT_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[7] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[7]_i_2__0_n_0 ),
        .Q(\COUNT_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_10__0
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_10__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    OUT_BIT_i_1__0
       (.I0(p_0_in),
        .O(OUT_BIT_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_3__0
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_4__0
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_5__0
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_6__0
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_7__0
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_8__0
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_9__0
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_9__0_n_0));
  FDRE OUT_BIT_reg
       (.C(clk),
        .CE(1'b1),
        .D(OUT_BIT_i_1__0_n_0),
        .Q(led_g_pwm_OBUF),
        .R(1'b0));
  CARRY4 OUT_BIT_reg_i_2__0
       (.CI(1'b0),
        .CO({p_0_in,NLW_OUT_BIT_reg_i_2__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({OUT_BIT_i_3__0_n_0,OUT_BIT_i_4__0_n_0,OUT_BIT_i_5__0_n_0,OUT_BIT_i_6__0_n_0}),
        .O(NLW_OUT_BIT_reg_i_2__0_O_UNCONNECTED[3:0]),
        .S({OUT_BIT_i_7__0_n_0,OUT_BIT_i_8__0_n_0,OUT_BIT_i_9__0_n_0,OUT_BIT_i_10__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[0]_i_1__0 
       (.I0(\TIMER_reg_n_0_[0] ),
        .O(TIMER[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \TIMER[1]_i_1__0 
       (.I0(\TIMER_reg_n_0_[1] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .O(TIMER[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \TIMER[2]_i_1__0 
       (.I0(\TIMER_reg_n_0_[2] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .O(TIMER[2]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \TIMER[3]_i_1__1 
       (.I0(\TIMER[4]_i_2__0_n_0 ),
        .I1(\TIMER_reg_n_0_[4] ),
        .I2(\TIMER_reg_n_0_[3] ),
        .I3(\TIMER_reg_n_0_[1] ),
        .I4(\TIMER_reg_n_0_[0] ),
        .I5(\TIMER_reg_n_0_[2] ),
        .O(TIMER[3]));
  LUT6 #(
    .INIT(64'hFFFE0001FFFE0000)) 
    \TIMER[4]_i_1__0 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .I5(\TIMER[4]_i_2__0_n_0 ),
        .O(TIMER[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[4]_i_2__0 
       (.I0(\TIMER_reg_n_0_[8] ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .I4(\TIMER_reg_n_0_[9] ),
        .O(\TIMER[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \TIMER[5]_i_1__0 
       (.I0(\TIMER_reg_n_0_[5] ),
        .I1(\TIMER_reg_n_0_[3] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .I3(\TIMER_reg_n_0_[0] ),
        .I4(\TIMER_reg_n_0_[2] ),
        .I5(\TIMER_reg_n_0_[4] ),
        .O(TIMER[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \TIMER[6]_i_1__0 
       (.I0(\TIMER[9]_i_2__0_n_0 ),
        .I1(\TIMER_reg_n_0_[5] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .O(TIMER[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \TIMER[7]_i_1__1 
       (.I0(\TIMER[9]_i_2__0_n_0 ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .O(TIMER[7]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \TIMER[8]_i_1__1 
       (.I0(\TIMER[9]_i_2__0_n_0 ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .O(TIMER[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \TIMER[9]_i_1__1 
       (.I0(\TIMER[9]_i_2__0_n_0 ),
        .I1(\TIMER_reg_n_0_[8] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .I3(\TIMER_reg_n_0_[5] ),
        .I4(\TIMER_reg_n_0_[7] ),
        .I5(\TIMER_reg_n_0_[9] ),
        .O(TIMER[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[9]_i_2__0 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .O(\TIMER[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[0]),
        .Q(\TIMER_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[1]),
        .Q(\TIMER_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[2]),
        .Q(\TIMER_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[3]),
        .Q(\TIMER_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[4]),
        .Q(\TIMER_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[5]),
        .Q(\TIMER_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[6]),
        .Q(\TIMER_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[7]),
        .Q(\TIMER_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[8]),
        .Q(\TIMER_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[9]),
        .Q(\TIMER_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_1
   (led_b_pwm_OBUF,
    clk);
  output led_b_pwm_OBUF;
  input clk;

  wire COUNT;
  wire \COUNT[0]_i_1__2_n_0 ;
  wire \COUNT[1]_i_1__2_n_0 ;
  wire \COUNT[1]_i_2__1_n_0 ;
  wire \COUNT[2]_i_1__2_n_0 ;
  wire \COUNT[3]_i_1__1_n_0 ;
  wire \COUNT[3]_i_2__1_n_0 ;
  wire \COUNT[4]_i_1__1_n_0 ;
  wire \COUNT[5]_i_1__1_n_0 ;
  wire \COUNT[6]_i_1__1_n_0 ;
  wire \COUNT[7]_i_2__1_n_0 ;
  wire \COUNT[7]_i_3__1_n_0 ;
  wire \COUNT_reg_n_0_[0] ;
  wire \COUNT_reg_n_0_[1] ;
  wire \COUNT_reg_n_0_[2] ;
  wire \COUNT_reg_n_0_[3] ;
  wire \COUNT_reg_n_0_[4] ;
  wire \COUNT_reg_n_0_[5] ;
  wire \COUNT_reg_n_0_[6] ;
  wire \COUNT_reg_n_0_[7] ;
  wire OUT_BIT_i_10__1_n_0;
  wire OUT_BIT_i_1__1_n_0;
  wire OUT_BIT_i_3__1_n_0;
  wire OUT_BIT_i_4__1_n_0;
  wire OUT_BIT_i_5__1_n_0;
  wire OUT_BIT_i_6__1_n_0;
  wire OUT_BIT_i_7__1_n_0;
  wire OUT_BIT_i_8__1_n_0;
  wire OUT_BIT_i_9__1_n_0;
  wire [9:0]TIMER;
  wire \TIMER[4]_i_2__1_n_0 ;
  wire \TIMER[9]_i_2__1_n_0 ;
  wire \TIMER_reg_n_0_[0] ;
  wire \TIMER_reg_n_0_[1] ;
  wire \TIMER_reg_n_0_[2] ;
  wire \TIMER_reg_n_0_[3] ;
  wire \TIMER_reg_n_0_[4] ;
  wire \TIMER_reg_n_0_[5] ;
  wire \TIMER_reg_n_0_[6] ;
  wire \TIMER_reg_n_0_[7] ;
  wire \TIMER_reg_n_0_[8] ;
  wire \TIMER_reg_n_0_[9] ;
  wire clk;
  wire led_b_pwm_OBUF;
  wire p_0_in;
  wire [2:0]NLW_OUT_BIT_reg_i_2__1_CO_UNCONNECTED;
  wire [3:0]NLW_OUT_BIT_reg_i_2__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \COUNT[0]_i_1__2 
       (.I0(\COUNT[7]_i_3__1_n_0 ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT_reg_n_0_[4] ),
        .I4(\COUNT_reg_n_0_[7] ),
        .I5(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \COUNT[1]_i_1__2 
       (.I0(\COUNT[1]_i_2__1_n_0 ),
        .I1(\COUNT_reg_n_0_[3] ),
        .I2(\COUNT_reg_n_0_[2] ),
        .I3(\COUNT_reg_n_0_[1] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .O(\COUNT[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT[1]_i_2__1 
       (.I0(\COUNT_reg_n_0_[5] ),
        .I1(\COUNT_reg_n_0_[4] ),
        .I2(\COUNT_reg_n_0_[7] ),
        .I3(\COUNT_reg_n_0_[6] ),
        .O(\COUNT[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hFFC011C0)) 
    \COUNT[2]_i_1__2 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .I3(\COUNT_reg_n_0_[2] ),
        .I4(\COUNT[3]_i_2__1_n_0 ),
        .O(\COUNT[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hFF805580)) 
    \COUNT[3]_i_1__1 
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .I2(\COUNT_reg_n_0_[0] ),
        .I3(\COUNT_reg_n_0_[3] ),
        .I4(\COUNT[3]_i_2__1_n_0 ),
        .O(\COUNT[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \COUNT[3]_i_2__1 
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT_reg_n_0_[4] ),
        .I3(\COUNT_reg_n_0_[7] ),
        .I4(\COUNT_reg_n_0_[6] ),
        .I5(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \COUNT[4]_i_1__1 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[6] ),
        .I2(\COUNT_reg_n_0_[5] ),
        .I3(\COUNT[7]_i_3__1_n_0 ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \COUNT[5]_i_1__1 
       (.I0(\COUNT[7]_i_3__1_n_0 ),
        .I1(\COUNT_reg_n_0_[7] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT_reg_n_0_[0] ),
        .I4(\COUNT_reg_n_0_[4] ),
        .I5(\COUNT_reg_n_0_[5] ),
        .O(\COUNT[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \COUNT[6]_i_1__1 
       (.I0(\COUNT_reg_n_0_[7] ),
        .I1(\COUNT_reg_n_0_[0] ),
        .I2(\COUNT_reg_n_0_[6] ),
        .I3(\COUNT[7]_i_3__1_n_0 ),
        .I4(\COUNT_reg_n_0_[5] ),
        .I5(\COUNT_reg_n_0_[4] ),
        .O(\COUNT[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \COUNT[7]_i_1__1 
       (.I0(\TIMER_reg_n_0_[9] ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .I5(\TIMER[9]_i_2__1_n_0 ),
        .O(COUNT));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \COUNT[7]_i_2__1 
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .I2(\COUNT[7]_i_3__1_n_0 ),
        .I3(\COUNT_reg_n_0_[6] ),
        .I4(\COUNT_reg_n_0_[0] ),
        .I5(\COUNT_reg_n_0_[7] ),
        .O(\COUNT[7]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \COUNT[7]_i_3__1 
       (.I0(\COUNT_reg_n_0_[3] ),
        .I1(\COUNT_reg_n_0_[2] ),
        .I2(\COUNT_reg_n_0_[1] ),
        .O(\COUNT[7]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[0] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[0]_i_1__2_n_0 ),
        .Q(\COUNT_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[1] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[1]_i_1__2_n_0 ),
        .Q(\COUNT_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[2] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[2]_i_1__2_n_0 ),
        .Q(\COUNT_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[3] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[3]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[4] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[4]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[5] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[5]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[6] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[6]_i_1__1_n_0 ),
        .Q(\COUNT_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_reg[7] 
       (.C(clk),
        .CE(COUNT),
        .D(\COUNT[7]_i_2__1_n_0 ),
        .Q(\COUNT_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_10__1
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_10__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    OUT_BIT_i_1__1
       (.I0(p_0_in),
        .O(OUT_BIT_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_3__1
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_4__1
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_5__1
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_5__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    OUT_BIT_i_6__1
       (.I0(\COUNT_reg_n_0_[0] ),
        .I1(\COUNT_reg_n_0_[1] ),
        .O(OUT_BIT_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_7__1
       (.I0(\COUNT_reg_n_0_[6] ),
        .I1(\COUNT_reg_n_0_[7] ),
        .O(OUT_BIT_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_8__1
       (.I0(\COUNT_reg_n_0_[4] ),
        .I1(\COUNT_reg_n_0_[5] ),
        .O(OUT_BIT_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OUT_BIT_i_9__1
       (.I0(\COUNT_reg_n_0_[2] ),
        .I1(\COUNT_reg_n_0_[3] ),
        .O(OUT_BIT_i_9__1_n_0));
  FDRE OUT_BIT_reg
       (.C(clk),
        .CE(1'b1),
        .D(OUT_BIT_i_1__1_n_0),
        .Q(led_b_pwm_OBUF),
        .R(1'b0));
  CARRY4 OUT_BIT_reg_i_2__1
       (.CI(1'b0),
        .CO({p_0_in,NLW_OUT_BIT_reg_i_2__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({OUT_BIT_i_3__1_n_0,OUT_BIT_i_4__1_n_0,OUT_BIT_i_5__1_n_0,OUT_BIT_i_6__1_n_0}),
        .O(NLW_OUT_BIT_reg_i_2__1_O_UNCONNECTED[3:0]),
        .S({OUT_BIT_i_7__1_n_0,OUT_BIT_i_8__1_n_0,OUT_BIT_i_9__1_n_0,OUT_BIT_i_10__1_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER[0]_i_1__1 
       (.I0(\TIMER_reg_n_0_[0] ),
        .O(TIMER[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \TIMER[1]_i_1__1 
       (.I0(\TIMER_reg_n_0_[1] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .O(TIMER[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \TIMER[2]_i_1__1 
       (.I0(\TIMER_reg_n_0_[2] ),
        .I1(\TIMER_reg_n_0_[0] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .O(TIMER[2]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \TIMER[3]_i_1__2 
       (.I0(\TIMER[4]_i_2__1_n_0 ),
        .I1(\TIMER_reg_n_0_[4] ),
        .I2(\TIMER_reg_n_0_[3] ),
        .I3(\TIMER_reg_n_0_[1] ),
        .I4(\TIMER_reg_n_0_[0] ),
        .I5(\TIMER_reg_n_0_[2] ),
        .O(TIMER[3]));
  LUT6 #(
    .INIT(64'hFFFE0001FFFE0000)) 
    \TIMER[4]_i_1__1 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .I5(\TIMER[4]_i_2__1_n_0 ),
        .O(TIMER[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[4]_i_2__1 
       (.I0(\TIMER_reg_n_0_[8] ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .I4(\TIMER_reg_n_0_[9] ),
        .O(\TIMER[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \TIMER[5]_i_1__1 
       (.I0(\TIMER_reg_n_0_[5] ),
        .I1(\TIMER_reg_n_0_[3] ),
        .I2(\TIMER_reg_n_0_[1] ),
        .I3(\TIMER_reg_n_0_[0] ),
        .I4(\TIMER_reg_n_0_[2] ),
        .I5(\TIMER_reg_n_0_[4] ),
        .O(TIMER[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \TIMER[6]_i_1__1 
       (.I0(\TIMER[9]_i_2__1_n_0 ),
        .I1(\TIMER_reg_n_0_[5] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .O(TIMER[6]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \TIMER[7]_i_1__2 
       (.I0(\TIMER[9]_i_2__1_n_0 ),
        .I1(\TIMER_reg_n_0_[6] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[7] ),
        .O(TIMER[7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \TIMER[8]_i_1__2 
       (.I0(\TIMER[9]_i_2__1_n_0 ),
        .I1(\TIMER_reg_n_0_[7] ),
        .I2(\TIMER_reg_n_0_[5] ),
        .I3(\TIMER_reg_n_0_[6] ),
        .I4(\TIMER_reg_n_0_[8] ),
        .O(TIMER[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \TIMER[9]_i_1__2 
       (.I0(\TIMER[9]_i_2__1_n_0 ),
        .I1(\TIMER_reg_n_0_[8] ),
        .I2(\TIMER_reg_n_0_[6] ),
        .I3(\TIMER_reg_n_0_[5] ),
        .I4(\TIMER_reg_n_0_[7] ),
        .I5(\TIMER_reg_n_0_[9] ),
        .O(TIMER[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TIMER[9]_i_2__1 
       (.I0(\TIMER_reg_n_0_[3] ),
        .I1(\TIMER_reg_n_0_[1] ),
        .I2(\TIMER_reg_n_0_[0] ),
        .I3(\TIMER_reg_n_0_[2] ),
        .I4(\TIMER_reg_n_0_[4] ),
        .O(\TIMER[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[0]),
        .Q(\TIMER_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[1]),
        .Q(\TIMER_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[2]),
        .Q(\TIMER_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[3]),
        .Q(\TIMER_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[4]),
        .Q(\TIMER_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[5]),
        .Q(\TIMER_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[6]),
        .Q(\TIMER_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[7]),
        .Q(\TIMER_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[8]),
        .Q(\TIMER_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \TIMER_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(TIMER[9]),
        .Q(\TIMER_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module VIDEO_TIME_GEN
   (\PIXCOL_DEL_reg[0] ,
    \PIXCOL_DEL_reg[1] ,
    \PIXCOL_DEL_reg[2] ,
    ADDRBWRADDR,
    \PIXROW_DEL_reg[0] ,
    \PIXROW_DEL_reg[1] ,
    D,
    INTHSYNCH,
    INTVSYNCH,
    BLANK,
    eth_clk_OBUF,
    internal_rst_reg);
  output \PIXCOL_DEL_reg[0] ;
  output \PIXCOL_DEL_reg[1] ;
  output \PIXCOL_DEL_reg[2] ;
  output [12:0]ADDRBWRADDR;
  output \PIXROW_DEL_reg[0] ;
  output \PIXROW_DEL_reg[1] ;
  output [0:0]D;
  output INTHSYNCH;
  output INTVSYNCH;
  output BLANK;
  input eth_clk_OBUF;
  input internal_rst_reg;

  wire [12:0]ADDRBWRADDR;
  wire BLANK;
  wire COL_ADDRESS;
  wire \COL_ADDRESS[0]_i_1_n_0 ;
  wire \COL_ADDRESS[1]_i_1_n_0 ;
  wire \COL_ADDRESS[2]_i_1_n_0 ;
  wire \COL_ADDRESS[3]_i_1_n_0 ;
  wire \COL_ADDRESS[4]_i_1_n_0 ;
  wire \COL_ADDRESS[5]_i_1_n_0 ;
  wire \COL_ADDRESS[6]_i_2_n_0 ;
  wire \COL_ADDRESS[6]_i_3_n_0 ;
  wire \COL_ADDRESS_reg_n_0_[1] ;
  wire \COL_ADDRESS_reg_n_0_[2] ;
  wire \COL_ADDRESS_reg_n_0_[3] ;
  wire \COL_ADDRESS_reg_n_0_[4] ;
  wire \COL_ADDRESS_reg_n_0_[5] ;
  wire \COL_ADDRESS_reg_n_0_[6] ;
  wire [0:0]D;
  wire HBLANK_i_1_n_0;
  wire HBLANK_i_2_n_0;
  wire HBLANK_i_3_n_0;
  wire HBLANK_i_4_n_0;
  wire HBLANK_i_5_n_0;
  wire HBLANK_reg_n_0;
  wire [10:0]HTIMER;
  wire \HTIMER[0]_i_2_n_0 ;
  wire \HTIMER[10]_i_2_n_0 ;
  wire \HTIMER[10]_i_3_n_0 ;
  wire \HTIMER[6]_i_2_n_0 ;
  wire INTHSYNCH;
  wire INTHSYNCH_i_1_n_0;
  wire INTHSYNCH_i_2_n_0;
  wire INTHSYNCH_i_3_n_0;
  wire INTVSYNCH;
  wire INTVSYNCH_i_1_n_0;
  wire INTVSYNCH_i_2_n_0;
  wire INTVSYNCH_i_3_n_0;
  wire INTVSYNCH_i_4_n_0;
  wire MEMORY_reg_0_i_11_n_0;
  wire MEMORY_reg_0_i_12_n_0;
  wire MEMORY_reg_0_i_13_n_0;
  wire MEMORY_reg_0_i_14_n_0;
  wire MEMORY_reg_0_i_15_n_0;
  wire MEMORY_reg_0_i_16_n_0;
  wire MEMORY_reg_0_i_2_n_0;
  wire MEMORY_reg_0_i_3_n_0;
  wire \PIXCOL_DEL_reg[0] ;
  wire \PIXCOL_DEL_reg[1] ;
  wire \PIXCOL_DEL_reg[2] ;
  wire \PIXROW_DEL_reg[0] ;
  wire \PIXROW_DEL_reg[1] ;
  wire \PIX_COL_ADDRESS[0]_i_1_n_0 ;
  wire \PIX_COL_ADDRESS[1]_i_1_n_0 ;
  wire \PIX_COL_ADDRESS[2]_i_1_n_0 ;
  wire PIX_ROW_ADDRESS;
  wire \PIX_ROW_ADDRESS[0]_i_1_n_0 ;
  wire \PIX_ROW_ADDRESS[1]_i_1_n_0 ;
  wire \PIX_ROW_ADDRESS[2]_i_1_n_0 ;
  wire \PIX_ROW_ADDRESS[2]_i_3_n_0 ;
  wire [12:1]ROW_ADDRESS;
  wire \ROW_ADDRESS[12]_i_1_n_0 ;
  wire \ROW_ADDRESS[12]_i_3_n_0 ;
  wire \ROW_ADDRESS[12]_i_4_n_0 ;
  wire \ROW_ADDRESS[12]_i_5_n_0 ;
  wire [12:1]ROW_ADDRESS_1;
  wire VBLANK_i_1_n_0;
  wire VBLANK_i_2_n_0;
  wire VBLANK_i_3_n_0;
  wire VBLANK_i_4_n_0;
  wire VBLANK_reg_n_0;
  wire [9:0]VTIMER;
  wire \VTIMER[0]_i_2_n_0 ;
  wire \VTIMER[8]_i_2_n_0 ;
  wire \VTIMER[9]_i_2_n_0 ;
  wire \VTIMER[9]_i_3_n_0 ;
  wire \VTIMER[9]_i_4_n_0 ;
  wire [9:0]VTIMER_0;
  wire VTIMER_EN;
  wire VTIMER_EN0;
  wire eth_clk_OBUF;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_3_n_0;
  wire internal_rst_reg;
  wire \plusOp_inferred__4/i__carry__0_n_0 ;
  wire \plusOp_inferred__4/i__carry__0_n_4 ;
  wire \plusOp_inferred__4/i__carry__0_n_5 ;
  wire \plusOp_inferred__4/i__carry__0_n_6 ;
  wire \plusOp_inferred__4/i__carry__0_n_7 ;
  wire \plusOp_inferred__4/i__carry__1_n_4 ;
  wire \plusOp_inferred__4/i__carry__1_n_5 ;
  wire \plusOp_inferred__4/i__carry__1_n_6 ;
  wire \plusOp_inferred__4/i__carry__1_n_7 ;
  wire \plusOp_inferred__4/i__carry_n_0 ;
  wire \plusOp_inferred__4/i__carry_n_4 ;
  wire \plusOp_inferred__4/i__carry_n_5 ;
  wire \plusOp_inferred__4/i__carry_n_6 ;
  wire \plusOp_inferred__4/i__carry_n_7 ;
  wire [10:0]sel0;
  wire [3:0]NLW_MEMORY_reg_0_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_MEMORY_reg_0_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_MEMORY_reg_0_i_3_CO_UNCONNECTED;
  wire [0:0]NLW_MEMORY_reg_0_i_3_O_UNCONNECTED;
  wire [2:0]\NLW_plusOp_inferred__4/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_plusOp_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_plusOp_inferred__4/i__carry__1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    BLANK_DEL_i_1
       (.I0(VBLANK_reg_n_0),
        .I1(HBLANK_reg_n_0),
        .O(BLANK));
  LUT1 #(
    .INIT(2'h1)) 
    \COL_ADDRESS[0]_i_1 
       (.I0(ADDRBWRADDR[0]),
        .O(\COL_ADDRESS[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \COL_ADDRESS[1]_i_1 
       (.I0(\COL_ADDRESS_reg_n_0_[1] ),
        .I1(ADDRBWRADDR[0]),
        .O(\COL_ADDRESS[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000EFFF)) 
    \COL_ADDRESS[2]_i_1 
       (.I0(\COL_ADDRESS_reg_n_0_[4] ),
        .I1(\COL_ADDRESS_reg_n_0_[3] ),
        .I2(\COL_ADDRESS_reg_n_0_[6] ),
        .I3(\COL_ADDRESS_reg_n_0_[5] ),
        .I4(\COL_ADDRESS[6]_i_3_n_0 ),
        .I5(\COL_ADDRESS_reg_n_0_[2] ),
        .O(\COL_ADDRESS[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \COL_ADDRESS[3]_i_1 
       (.I0(\COL_ADDRESS_reg_n_0_[3] ),
        .I1(\COL_ADDRESS_reg_n_0_[1] ),
        .I2(ADDRBWRADDR[0]),
        .I3(\COL_ADDRESS_reg_n_0_[2] ),
        .O(\COL_ADDRESS[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \COL_ADDRESS[4]_i_1 
       (.I0(\COL_ADDRESS_reg_n_0_[4] ),
        .I1(\COL_ADDRESS_reg_n_0_[2] ),
        .I2(ADDRBWRADDR[0]),
        .I3(\COL_ADDRESS_reg_n_0_[1] ),
        .I4(\COL_ADDRESS_reg_n_0_[3] ),
        .O(\COL_ADDRESS[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFD00C00000)) 
    \COL_ADDRESS[5]_i_1 
       (.I0(\COL_ADDRESS_reg_n_0_[6] ),
        .I1(\COL_ADDRESS_reg_n_0_[4] ),
        .I2(\COL_ADDRESS_reg_n_0_[2] ),
        .I3(\COL_ADDRESS[6]_i_3_n_0 ),
        .I4(\COL_ADDRESS_reg_n_0_[3] ),
        .I5(\COL_ADDRESS_reg_n_0_[5] ),
        .O(\COL_ADDRESS[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \COL_ADDRESS[6]_i_1 
       (.I0(\PIXCOL_DEL_reg[0] ),
        .I1(\PIXCOL_DEL_reg[1] ),
        .I2(\PIXCOL_DEL_reg[2] ),
        .I3(HBLANK_reg_n_0),
        .I4(VBLANK_reg_n_0),
        .O(COL_ADDRESS));
  LUT6 #(
    .INIT(64'hDFFEFFFF20000000)) 
    \COL_ADDRESS[6]_i_2 
       (.I0(\COL_ADDRESS_reg_n_0_[3] ),
        .I1(\COL_ADDRESS[6]_i_3_n_0 ),
        .I2(\COL_ADDRESS_reg_n_0_[2] ),
        .I3(\COL_ADDRESS_reg_n_0_[4] ),
        .I4(\COL_ADDRESS_reg_n_0_[5] ),
        .I5(\COL_ADDRESS_reg_n_0_[6] ),
        .O(\COL_ADDRESS[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \COL_ADDRESS[6]_i_3 
       (.I0(\COL_ADDRESS_reg_n_0_[1] ),
        .I1(ADDRBWRADDR[0]),
        .O(\COL_ADDRESS[6]_i_3_n_0 ));
  FDRE \COL_ADDRESS_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[0]_i_1_n_0 ),
        .Q(ADDRBWRADDR[0]),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[1]_i_1_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[1] ),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[2]_i_1_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[2] ),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[3] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[3]_i_1_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[3] ),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[4] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[4]_i_1_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[4] ),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[5] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[5]_i_1_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[5] ),
        .R(internal_rst_reg));
  FDRE \COL_ADDRESS_reg[6] 
       (.C(eth_clk_OBUF),
        .CE(COL_ADDRESS),
        .D(\COL_ADDRESS[6]_i_2_n_0 ),
        .Q(\COL_ADDRESS_reg_n_0_[6] ),
        .R(internal_rst_reg));
  LUT6 #(
    .INIT(64'hFFFFFFD0FFD0FFD0)) 
    HBLANK_i_1
       (.I0(HBLANK_i_2_n_0),
        .I1(HBLANK_i_3_n_0),
        .I2(HBLANK_reg_n_0),
        .I3(internal_rst_reg),
        .I4(HBLANK_i_4_n_0),
        .I5(HBLANK_i_5_n_0),
        .O(HBLANK_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    HBLANK_i_2
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[0]),
        .I3(sel0[10]),
        .I4(sel0[5]),
        .I5(sel0[3]),
        .O(HBLANK_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    HBLANK_i_3
       (.I0(sel0[9]),
        .I1(sel0[8]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .O(HBLANK_i_3_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    HBLANK_i_4
       (.I0(sel0[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .O(HBLANK_i_4_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    HBLANK_i_5
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[3]),
        .I3(sel0[5]),
        .I4(sel0[9]),
        .I5(sel0[8]),
        .O(HBLANK_i_5_n_0));
  FDRE HBLANK_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HBLANK_i_1_n_0),
        .Q(HBLANK_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \HTIMER[0]_i_1 
       (.I0(\HTIMER[0]_i_2_n_0 ),
        .I1(sel0[10]),
        .I2(sel0[3]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .I5(sel0[0]),
        .O(HTIMER[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \HTIMER[0]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[8]),
        .I4(sel0[9]),
        .I5(sel0[7]),
        .O(\HTIMER[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \HTIMER[10]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[10]),
        .I2(sel0[7]),
        .I3(sel0[8]),
        .I4(sel0[9]),
        .I5(\HTIMER[10]_i_3_n_0 ),
        .O(HTIMER[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \HTIMER[10]_i_2 
       (.I0(\HTIMER[0]_i_2_n_0 ),
        .I1(sel0[10]),
        .I2(sel0[3]),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .I5(sel0[0]),
        .O(\HTIMER[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \HTIMER[10]_i_3 
       (.I0(sel0[6]),
        .I1(sel0[3]),
        .I2(sel0[5]),
        .I3(\HTIMER[6]_i_2_n_0 ),
        .O(\HTIMER[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \HTIMER[1]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(HTIMER[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \HTIMER[2]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(HTIMER[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \HTIMER[3]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(HTIMER[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \HTIMER[4]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[3]),
        .O(HTIMER[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \HTIMER[5]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[5]),
        .I2(\HTIMER[6]_i_2_n_0 ),
        .I3(sel0[3]),
        .O(HTIMER[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \HTIMER[6]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[6]),
        .I2(\HTIMER[6]_i_2_n_0 ),
        .I3(sel0[5]),
        .I4(sel0[3]),
        .O(HTIMER[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \HTIMER[6]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[4]),
        .O(\HTIMER[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \HTIMER[7]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[7]),
        .I2(\HTIMER[10]_i_3_n_0 ),
        .O(HTIMER[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \HTIMER[8]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[8]),
        .I2(\HTIMER[10]_i_3_n_0 ),
        .I3(sel0[7]),
        .O(HTIMER[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \HTIMER[9]_i_1 
       (.I0(\HTIMER[10]_i_2_n_0 ),
        .I1(sel0[9]),
        .I2(sel0[8]),
        .I3(sel0[7]),
        .I4(\HTIMER[10]_i_3_n_0 ),
        .O(HTIMER[9]));
  FDRE \HTIMER_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[0]),
        .Q(sel0[0]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[10] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[10]),
        .Q(sel0[10]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[1]),
        .Q(sel0[1]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[2]),
        .Q(sel0[2]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[3] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[3]),
        .Q(sel0[3]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[4] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[4]),
        .Q(sel0[4]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[5] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[5]),
        .Q(sel0[5]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[6] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[6]),
        .Q(sel0[6]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[7] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[7]),
        .Q(sel0[7]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[8] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[8]),
        .Q(sel0[8]),
        .R(internal_rst_reg));
  FDRE \HTIMER_reg[9] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(HTIMER[9]),
        .Q(sel0[9]),
        .R(internal_rst_reg));
  LUT6 #(
    .INIT(64'h00000000AAEA0000)) 
    INTHSYNCH_i_1
       (.I0(INTHSYNCH),
        .I1(INTHSYNCH_i_2_n_0),
        .I2(INTHSYNCH_i_3_n_0),
        .I3(\HTIMER[0]_i_2_n_0 ),
        .I4(\HTIMER[10]_i_2_n_0 ),
        .I5(internal_rst_reg),
        .O(INTHSYNCH_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    INTHSYNCH_i_2
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[6]),
        .O(INTHSYNCH_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    INTHSYNCH_i_3
       (.I0(sel0[0]),
        .I1(sel0[10]),
        .O(INTHSYNCH_i_3_n_0));
  FDRE INTHSYNCH_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(INTHSYNCH_i_1_n_0),
        .Q(INTHSYNCH),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00AE00AE000000AE)) 
    INTVSYNCH_i_1
       (.I0(INTVSYNCH),
        .I1(INTVSYNCH_i_2_n_0),
        .I2(INTVSYNCH_i_3_n_0),
        .I3(internal_rst_reg),
        .I4(VTIMER_EN),
        .I5(\VTIMER[9]_i_2_n_0 ),
        .O(INTVSYNCH_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    INTVSYNCH_i_2
       (.I0(INTVSYNCH_i_4_n_0),
        .I1(VTIMER_EN),
        .I2(VTIMER[9]),
        .I3(VTIMER[0]),
        .I4(VTIMER[4]),
        .I5(VTIMER[7]),
        .O(INTVSYNCH_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    INTVSYNCH_i_3
       (.I0(VTIMER[5]),
        .I1(VTIMER[3]),
        .I2(VTIMER[8]),
        .I3(VTIMER[6]),
        .O(INTVSYNCH_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    INTVSYNCH_i_4
       (.I0(VTIMER[1]),
        .I1(VTIMER[2]),
        .O(INTVSYNCH_i_4_n_0));
  FDRE INTVSYNCH_reg
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(INTVSYNCH_i_1_n_0),
        .Q(INTVSYNCH),
        .R(1'b0));
  CARRY4 MEMORY_reg_0_i_1
       (.CI(MEMORY_reg_0_i_2_n_0),
        .CO(NLW_MEMORY_reg_0_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ADDRBWRADDR[12:9]),
        .S(ROW_ADDRESS[12:9]));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_11
       (.I0(ROW_ADDRESS[6]),
        .I1(\COL_ADDRESS_reg_n_0_[6] ),
        .O(MEMORY_reg_0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_12
       (.I0(ROW_ADDRESS[5]),
        .I1(\COL_ADDRESS_reg_n_0_[5] ),
        .O(MEMORY_reg_0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_13
       (.I0(ROW_ADDRESS[4]),
        .I1(\COL_ADDRESS_reg_n_0_[4] ),
        .O(MEMORY_reg_0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_14
       (.I0(ROW_ADDRESS[3]),
        .I1(\COL_ADDRESS_reg_n_0_[3] ),
        .O(MEMORY_reg_0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_15
       (.I0(ROW_ADDRESS[2]),
        .I1(\COL_ADDRESS_reg_n_0_[2] ),
        .O(MEMORY_reg_0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_16
       (.I0(ROW_ADDRESS[1]),
        .I1(\COL_ADDRESS_reg_n_0_[1] ),
        .O(MEMORY_reg_0_i_16_n_0));
  CARRY4 MEMORY_reg_0_i_2
       (.CI(MEMORY_reg_0_i_3_n_0),
        .CO({MEMORY_reg_0_i_2_n_0,NLW_MEMORY_reg_0_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ROW_ADDRESS[6:5]}),
        .O(ADDRBWRADDR[8:5]),
        .S({ROW_ADDRESS[8:7],MEMORY_reg_0_i_11_n_0,MEMORY_reg_0_i_12_n_0}));
  CARRY4 MEMORY_reg_0_i_3
       (.CI(1'b0),
        .CO({MEMORY_reg_0_i_3_n_0,NLW_MEMORY_reg_0_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ROW_ADDRESS[4:1]),
        .O({ADDRBWRADDR[4:2],NLW_MEMORY_reg_0_i_3_O_UNCONNECTED[0]}),
        .S({MEMORY_reg_0_i_13_n_0,MEMORY_reg_0_i_14_n_0,MEMORY_reg_0_i_15_n_0,MEMORY_reg_0_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    MEMORY_reg_0_i_4
       (.I0(ROW_ADDRESS[1]),
        .I1(\COL_ADDRESS_reg_n_0_[1] ),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'hE1)) 
    \PIX_COL_ADDRESS[0]_i_1 
       (.I0(VBLANK_reg_n_0),
        .I1(HBLANK_reg_n_0),
        .I2(\PIXCOL_DEL_reg[0] ),
        .O(\PIX_COL_ADDRESS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \PIX_COL_ADDRESS[1]_i_1 
       (.I0(\PIXCOL_DEL_reg[0] ),
        .I1(HBLANK_reg_n_0),
        .I2(VBLANK_reg_n_0),
        .I3(\PIXCOL_DEL_reg[1] ),
        .O(\PIX_COL_ADDRESS[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \PIX_COL_ADDRESS[2]_i_1 
       (.I0(\PIXCOL_DEL_reg[0] ),
        .I1(\PIXCOL_DEL_reg[1] ),
        .I2(HBLANK_reg_n_0),
        .I3(VBLANK_reg_n_0),
        .I4(\PIXCOL_DEL_reg[2] ),
        .O(\PIX_COL_ADDRESS[2]_i_1_n_0 ));
  FDRE \PIX_COL_ADDRESS_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_COL_ADDRESS[0]_i_1_n_0 ),
        .Q(\PIXCOL_DEL_reg[0] ),
        .R(internal_rst_reg));
  FDRE \PIX_COL_ADDRESS_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_COL_ADDRESS[1]_i_1_n_0 ),
        .Q(\PIXCOL_DEL_reg[1] ),
        .R(internal_rst_reg));
  FDRE \PIX_COL_ADDRESS_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_COL_ADDRESS[2]_i_1_n_0 ),
        .Q(\PIXCOL_DEL_reg[2] ),
        .R(internal_rst_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \PIX_ROW_ADDRESS[0]_i_1 
       (.I0(PIX_ROW_ADDRESS),
        .I1(\PIXROW_DEL_reg[0] ),
        .O(\PIX_ROW_ADDRESS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PIX_ROW_ADDRESS[1]_i_1 
       (.I0(\PIXROW_DEL_reg[0] ),
        .I1(PIX_ROW_ADDRESS),
        .I2(\PIXROW_DEL_reg[1] ),
        .O(\PIX_ROW_ADDRESS[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PIX_ROW_ADDRESS[2]_i_1 
       (.I0(\PIXROW_DEL_reg[0] ),
        .I1(\PIXROW_DEL_reg[1] ),
        .I2(PIX_ROW_ADDRESS),
        .I3(D),
        .O(\PIX_ROW_ADDRESS[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \PIX_ROW_ADDRESS[2]_i_2 
       (.I0(VBLANK_reg_n_0),
        .I1(HBLANK_reg_n_0),
        .I2(\PIXCOL_DEL_reg[2] ),
        .I3(\PIXCOL_DEL_reg[1] ),
        .I4(\PIXCOL_DEL_reg[0] ),
        .I5(\PIX_ROW_ADDRESS[2]_i_3_n_0 ),
        .O(PIX_ROW_ADDRESS));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \PIX_ROW_ADDRESS[2]_i_3 
       (.I0(\COL_ADDRESS_reg_n_0_[5] ),
        .I1(\COL_ADDRESS_reg_n_0_[6] ),
        .I2(\COL_ADDRESS_reg_n_0_[2] ),
        .I3(\COL_ADDRESS_reg_n_0_[3] ),
        .I4(\COL_ADDRESS_reg_n_0_[4] ),
        .I5(\COL_ADDRESS[6]_i_3_n_0 ),
        .O(\PIX_ROW_ADDRESS[2]_i_3_n_0 ));
  FDRE \PIX_ROW_ADDRESS_reg[0] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_ROW_ADDRESS[0]_i_1_n_0 ),
        .Q(\PIXROW_DEL_reg[0] ),
        .R(internal_rst_reg));
  FDRE \PIX_ROW_ADDRESS_reg[1] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_ROW_ADDRESS[1]_i_1_n_0 ),
        .Q(\PIXROW_DEL_reg[1] ),
        .R(internal_rst_reg));
  FDRE \PIX_ROW_ADDRESS_reg[2] 
       (.C(eth_clk_OBUF),
        .CE(1'b1),
        .D(\PIX_ROW_ADDRESS[2]_i_1_n_0 ),
        .Q(D),
        .R(internal_rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ROW_ADDRESS[10]_i_1 
  LUT2 #(


