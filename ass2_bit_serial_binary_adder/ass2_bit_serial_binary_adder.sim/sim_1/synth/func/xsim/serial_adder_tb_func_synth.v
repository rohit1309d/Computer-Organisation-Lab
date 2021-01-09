// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Sep 23 14:28:00 2020
// Host        : DESKTOP-TV47M97 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Xilinx/Projects/ass2_bit_serial_binary_adder/ass2_bit_serial_binary_adder.sim/sim_1/synth/func/xsim/serial_adder_tb_func_synth.v
// Design      : serial_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module d_flipflop
   (cin,
    out_reg_0,
    clk_IBUF_BUFG,
    reset_IBUF);
  output cin;
  input out_reg_0;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire cin;
  wire clk_IBUF_BUFG;
  wire out_reg_0;
  wire reset_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(out_reg_0),
        .Q(cin));
endmodule

module full_adder
   (D,
    cout_temp,
    wire_b,
    wire_a,
    cin);
  output [0:0]D;
  output cout_temp;
  input wire_b;
  input wire_a;
  input cin;

  wire [0:0]D;
  wire cin;
  wire cout_temp;
  wire wire_a;
  wire wire_b;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    cout
       (.I0(wire_b),
        .I1(cin),
        .I2(wire_a),
        .O(cout_temp));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    sum
       (.I0(wire_b),
        .I1(wire_a),
        .I2(cin),
        .O(D));
endmodule

module piso
   (wire_a,
    \memory_reg[0]_P_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    enable,
    data_a_IBUF);
  output wire_a;
  input \memory_reg[0]_P_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input enable;
  input [7:0]data_a_IBUF;

  wire clk_IBUF_BUFG;
  wire [7:0]data_a_IBUF;
  wire enable;
  wire \memory[0]_C_i_1_n_0 ;
  wire \memory[0]_P_i_1_n_0 ;
  wire \memory[1]_C_i_1_n_0 ;
  wire \memory[1]_P_i_1_n_0 ;
  wire \memory[2]_C_i_1_n_0 ;
  wire \memory[2]_P_i_1_n_0 ;
  wire \memory[3]_C_i_1_n_0 ;
  wire \memory[3]_P_i_1_n_0 ;
  wire \memory[4]_C_i_1_n_0 ;
  wire \memory[4]_P_i_1_n_0 ;
  wire \memory[5]_C_i_1_n_0 ;
  wire \memory[5]_P_i_1_n_0 ;
  wire \memory[6]_C_i_1_n_0 ;
  wire \memory[6]_P_i_1_n_0 ;
  wire \memory_reg[0]_C_n_0 ;
  wire \memory_reg[0]_LDC_i_1_n_0 ;
  wire \memory_reg[0]_LDC_i_2_n_0 ;
  wire \memory_reg[0]_LDC_n_0 ;
  wire \memory_reg[0]_P_0 ;
  wire \memory_reg[0]_P_n_0 ;
  wire \memory_reg[1]_C_n_0 ;
  wire \memory_reg[1]_LDC_i_1_n_0 ;
  wire \memory_reg[1]_LDC_i_2_n_0 ;
  wire \memory_reg[1]_LDC_n_0 ;
  wire \memory_reg[1]_P_n_0 ;
  wire \memory_reg[2]_C_n_0 ;
  wire \memory_reg[2]_LDC_i_1_n_0 ;
  wire \memory_reg[2]_LDC_i_2_n_0 ;
  wire \memory_reg[2]_LDC_n_0 ;
  wire \memory_reg[2]_P_n_0 ;
  wire \memory_reg[3]_C_n_0 ;
  wire \memory_reg[3]_LDC_i_1_n_0 ;
  wire \memory_reg[3]_LDC_i_2_n_0 ;
  wire \memory_reg[3]_LDC_n_0 ;
  wire \memory_reg[3]_P_n_0 ;
  wire \memory_reg[4]_C_n_0 ;
  wire \memory_reg[4]_LDC_i_1_n_0 ;
  wire \memory_reg[4]_LDC_i_2_n_0 ;
  wire \memory_reg[4]_LDC_n_0 ;
  wire \memory_reg[4]_P_n_0 ;
  wire \memory_reg[5]_C_n_0 ;
  wire \memory_reg[5]_LDC_i_1_n_0 ;
  wire \memory_reg[5]_LDC_i_2_n_0 ;
  wire \memory_reg[5]_LDC_n_0 ;
  wire \memory_reg[5]_P_n_0 ;
  wire \memory_reg[6]_C_n_0 ;
  wire \memory_reg[6]_LDC_i_1_n_0 ;
  wire \memory_reg[6]_LDC_i_2_n_0 ;
  wire \memory_reg[6]_LDC_n_0 ;
  wire \memory_reg[6]_P_n_0 ;
  wire \memory_reg[7]_LDC_i_1_n_0 ;
  wire \memory_reg[7]_LDC_i_2_n_0 ;
  wire \memory_reg[7]_LDC_n_0 ;
  wire \memory_reg[7]_P_n_0 ;
  wire out_i_1__0_n_0;
  wire reset_IBUF;
  wire wire_a;

  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[0]_C_i_1 
       (.I0(\memory_reg[1]_P_n_0 ),
        .I1(\memory_reg[1]_LDC_n_0 ),
        .I2(\memory_reg[1]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[0]_C_n_0 ),
        .O(\memory[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[0]_P_i_1 
       (.I0(\memory_reg[1]_P_n_0 ),
        .I1(\memory_reg[1]_LDC_n_0 ),
        .I2(\memory_reg[1]_C_n_0 ),
        .O(\memory[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[1]_C_i_1 
       (.I0(\memory_reg[2]_P_n_0 ),
        .I1(\memory_reg[2]_LDC_n_0 ),
        .I2(\memory_reg[2]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[1]_C_n_0 ),
        .O(\memory[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[1]_P_i_1 
       (.I0(\memory_reg[2]_P_n_0 ),
        .I1(\memory_reg[2]_LDC_n_0 ),
        .I2(\memory_reg[2]_C_n_0 ),
        .O(\memory[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[2]_C_i_1 
       (.I0(\memory_reg[3]_P_n_0 ),
        .I1(\memory_reg[3]_LDC_n_0 ),
        .I2(\memory_reg[3]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[2]_C_n_0 ),
        .O(\memory[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[2]_P_i_1 
       (.I0(\memory_reg[3]_P_n_0 ),
        .I1(\memory_reg[3]_LDC_n_0 ),
        .I2(\memory_reg[3]_C_n_0 ),
        .O(\memory[2]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[3]_C_i_1 
       (.I0(\memory_reg[4]_P_n_0 ),
        .I1(\memory_reg[4]_LDC_n_0 ),
        .I2(\memory_reg[4]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[3]_C_n_0 ),
        .O(\memory[3]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[3]_P_i_1 
       (.I0(\memory_reg[4]_P_n_0 ),
        .I1(\memory_reg[4]_LDC_n_0 ),
        .I2(\memory_reg[4]_C_n_0 ),
        .O(\memory[3]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[4]_C_i_1 
       (.I0(\memory_reg[5]_P_n_0 ),
        .I1(\memory_reg[5]_LDC_n_0 ),
        .I2(\memory_reg[5]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[4]_C_n_0 ),
        .O(\memory[4]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[4]_P_i_1 
       (.I0(\memory_reg[5]_P_n_0 ),
        .I1(\memory_reg[5]_LDC_n_0 ),
        .I2(\memory_reg[5]_C_n_0 ),
        .O(\memory[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[5]_C_i_1 
       (.I0(\memory_reg[6]_P_n_0 ),
        .I1(\memory_reg[6]_LDC_n_0 ),
        .I2(\memory_reg[6]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[5]_C_n_0 ),
        .O(\memory[5]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[5]_P_i_1 
       (.I0(\memory_reg[6]_P_n_0 ),
        .I1(\memory_reg[6]_LDC_n_0 ),
        .I2(\memory_reg[6]_C_n_0 ),
        .O(\memory[5]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    \memory[6]_C_i_1 
       (.I0(\memory_reg[7]_LDC_n_0 ),
        .I1(\memory_reg[7]_P_n_0 ),
        .I2(enable),
        .I3(reset_IBUF),
        .I4(\memory_reg[6]_C_n_0 ),
        .O(\memory[6]_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory[6]_P_i_1 
       (.I0(\memory_reg[7]_LDC_n_0 ),
        .I1(\memory_reg[7]_P_n_0 ),
        .O(\memory[6]_P_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[0]_LDC_i_2_n_0 ),
        .D(\memory[0]_C_i_1_n_0 ),
        .Q(\memory_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[0]_LDC 
       (.CLR(\memory_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[0]_LDC_i_1 
       (.I0(data_a_IBUF[0]),
        .I1(reset_IBUF),
        .O(\memory_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[0]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[0]),
        .O(\memory_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[0]_P_i_1_n_0 ),
        .PRE(\memory_reg[0]_LDC_i_1_n_0 ),
        .Q(\memory_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[1]_LDC_i_2_n_0 ),
        .D(\memory[1]_C_i_1_n_0 ),
        .Q(\memory_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[1]_LDC 
       (.CLR(\memory_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[1]_LDC_i_1 
       (.I0(data_a_IBUF[1]),
        .I1(reset_IBUF),
        .O(\memory_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[1]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[1]),
        .O(\memory_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[1]_P_i_1_n_0 ),
        .PRE(\memory_reg[1]_LDC_i_1_n_0 ),
        .Q(\memory_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[2]_LDC_i_2_n_0 ),
        .D(\memory[2]_C_i_1_n_0 ),
        .Q(\memory_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[2]_LDC 
       (.CLR(\memory_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[2]_LDC_i_1 
       (.I0(data_a_IBUF[2]),
        .I1(reset_IBUF),
        .O(\memory_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[2]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[2]),
        .O(\memory_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[2]_P_i_1_n_0 ),
        .PRE(\memory_reg[2]_LDC_i_1_n_0 ),
        .Q(\memory_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[3]_LDC_i_2_n_0 ),
        .D(\memory[3]_C_i_1_n_0 ),
        .Q(\memory_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[3]_LDC 
       (.CLR(\memory_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[3]_LDC_i_1 
       (.I0(data_a_IBUF[3]),
        .I1(reset_IBUF),
        .O(\memory_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[3]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[3]),
        .O(\memory_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[3]_P_i_1_n_0 ),
        .PRE(\memory_reg[3]_LDC_i_1_n_0 ),
        .Q(\memory_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[4]_LDC_i_2_n_0 ),
        .D(\memory[4]_C_i_1_n_0 ),
        .Q(\memory_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[4]_LDC 
       (.CLR(\memory_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[4]_LDC_i_1 
       (.I0(data_a_IBUF[4]),
        .I1(reset_IBUF),
        .O(\memory_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[4]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[4]),
        .O(\memory_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[4]_P_i_1_n_0 ),
        .PRE(\memory_reg[4]_LDC_i_1_n_0 ),
        .Q(\memory_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[5]_LDC_i_2_n_0 ),
        .D(\memory[5]_C_i_1_n_0 ),
        .Q(\memory_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[5]_LDC 
       (.CLR(\memory_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[5]_LDC_i_1 
       (.I0(data_a_IBUF[5]),
        .I1(reset_IBUF),
        .O(\memory_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[5]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[5]),
        .O(\memory_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[5]_P_i_1_n_0 ),
        .PRE(\memory_reg[5]_LDC_i_1_n_0 ),
        .Q(\memory_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[6]_LDC_i_2_n_0 ),
        .D(\memory[6]_C_i_1_n_0 ),
        .Q(\memory_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[6]_LDC 
       (.CLR(\memory_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[6]_LDC_i_1 
       (.I0(data_a_IBUF[6]),
        .I1(reset_IBUF),
        .O(\memory_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[6]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[6]),
        .O(\memory_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(\memory[6]_P_i_1_n_0 ),
        .PRE(\memory_reg[6]_LDC_i_1_n_0 ),
        .Q(\memory_reg[6]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[7]_LDC 
       (.CLR(\memory_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\memory_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[7]_LDC_i_1 
       (.I0(data_a_IBUF[7]),
        .I1(reset_IBUF),
        .O(\memory_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[7]_LDC_i_2 
       (.I0(reset_IBUF),
        .I1(data_a_IBUF[7]),
        .O(\memory_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\memory_reg[0]_P_0 ),
        .D(1'b0),
        .PRE(\memory_reg[7]_LDC_i_1_n_0 ),
        .Q(\memory_reg[7]_P_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    out_i_1__0
       (.I0(\memory_reg[0]_P_n_0 ),
        .I1(\memory_reg[0]_LDC_n_0 ),
        .I2(\memory_reg[0]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(wire_a),
        .O(out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(out_i_1__0_n_0),
        .Q(wire_a));
endmodule

(* ORIG_REF_NAME = "piso" *) 
module piso_0
   (enable_reg,
    wire_b,
    out_reg_0,
    clk_IBUF_BUFG,
    reset_IBUF,
    wire_a,
    enable,
    cin,
    data_b_IBUF);
  output enable_reg;
  output wire_b;
  output out_reg_0;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input wire_a;
  input enable;
  input cin;
  input [7:0]data_b_IBUF;

  wire cin;
  wire clk_IBUF_BUFG;
  wire [7:0]data_b_IBUF;
  wire enable;
  wire enable_reg;
  wire \memory[0]_C_i_1__0_n_0 ;
  wire \memory[0]_P_i_1__0_n_0 ;
  wire \memory[1]_C_i_1__0_n_0 ;
  wire \memory[1]_P_i_1__0_n_0 ;
  wire \memory[2]_C_i_1__0_n_0 ;
  wire \memory[2]_P_i_1__0_n_0 ;
  wire \memory[3]_C_i_1__0_n_0 ;
  wire \memory[3]_P_i_1__0_n_0 ;
  wire \memory[4]_C_i_1__0_n_0 ;
  wire \memory[4]_P_i_1__0_n_0 ;
  wire \memory[5]_C_i_1__0_n_0 ;
  wire \memory[5]_P_i_1__0_n_0 ;
  wire \memory[6]_C_i_1__0_n_0 ;
  wire \memory[6]_P_i_1__0_n_0 ;
  wire \memory_reg[0]_C_n_0 ;
  wire \memory_reg[0]_LDC_i_1__0_n_0 ;
  wire \memory_reg[0]_LDC_i_2__0_n_0 ;
  wire \memory_reg[0]_LDC_n_0 ;
  wire \memory_reg[0]_P_n_0 ;
  wire \memory_reg[1]_C_n_0 ;
  wire \memory_reg[1]_LDC_i_1__0_n_0 ;
  wire \memory_reg[1]_LDC_i_2__0_n_0 ;
  wire \memory_reg[1]_LDC_n_0 ;
  wire \memory_reg[1]_P_n_0 ;
  wire \memory_reg[2]_C_n_0 ;
  wire \memory_reg[2]_LDC_i_1__0_n_0 ;
  wire \memory_reg[2]_LDC_i_2__0_n_0 ;
  wire \memory_reg[2]_LDC_n_0 ;
  wire \memory_reg[2]_P_n_0 ;
  wire \memory_reg[3]_C_n_0 ;
  wire \memory_reg[3]_LDC_i_1__0_n_0 ;
  wire \memory_reg[3]_LDC_i_2__0_n_0 ;
  wire \memory_reg[3]_LDC_n_0 ;
  wire \memory_reg[3]_P_n_0 ;
  wire \memory_reg[4]_C_n_0 ;
  wire \memory_reg[4]_LDC_i_1__0_n_0 ;
  wire \memory_reg[4]_LDC_i_2__0_n_0 ;
  wire \memory_reg[4]_LDC_n_0 ;
  wire \memory_reg[4]_P_n_0 ;
  wire \memory_reg[5]_C_n_0 ;
  wire \memory_reg[5]_LDC_i_1__0_n_0 ;
  wire \memory_reg[5]_LDC_i_2__0_n_0 ;
  wire \memory_reg[5]_LDC_n_0 ;
  wire \memory_reg[5]_P_n_0 ;
  wire \memory_reg[6]_C_n_0 ;
  wire \memory_reg[6]_LDC_i_1__0_n_0 ;
  wire \memory_reg[6]_LDC_i_2__0_n_0 ;
  wire \memory_reg[6]_LDC_n_0 ;
  wire \memory_reg[6]_P_n_0 ;
  wire \memory_reg[7]_LDC_i_1__0_n_0 ;
  wire \memory_reg[7]_LDC_i_2__0_n_0 ;
  wire \memory_reg[7]_LDC_n_0 ;
  wire \memory_reg[7]_P_n_0 ;
  wire out_i_1__1_n_0;
  wire out_reg_0;
  wire reset_IBUF;
  wire wire_a;
  wire wire_b;

  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[0]_C_i_1__0 
       (.I0(\memory_reg[1]_P_n_0 ),
        .I1(\memory_reg[1]_LDC_n_0 ),
        .I2(\memory_reg[1]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[0]_C_n_0 ),
        .O(\memory[0]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[0]_P_i_1__0 
       (.I0(\memory_reg[1]_P_n_0 ),
        .I1(\memory_reg[1]_LDC_n_0 ),
        .I2(\memory_reg[1]_C_n_0 ),
        .O(\memory[0]_P_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[1]_C_i_1__0 
       (.I0(\memory_reg[2]_P_n_0 ),
        .I1(\memory_reg[2]_LDC_n_0 ),
        .I2(\memory_reg[2]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[1]_C_n_0 ),
        .O(\memory[1]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[1]_P_i_1__0 
       (.I0(\memory_reg[2]_P_n_0 ),
        .I1(\memory_reg[2]_LDC_n_0 ),
        .I2(\memory_reg[2]_C_n_0 ),
        .O(\memory[1]_P_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[2]_C_i_1__0 
       (.I0(\memory_reg[3]_P_n_0 ),
        .I1(\memory_reg[3]_LDC_n_0 ),
        .I2(\memory_reg[3]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[2]_C_n_0 ),
        .O(\memory[2]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[2]_P_i_1__0 
       (.I0(\memory_reg[3]_P_n_0 ),
        .I1(\memory_reg[3]_LDC_n_0 ),
        .I2(\memory_reg[3]_C_n_0 ),
        .O(\memory[2]_P_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[3]_C_i_1__0 
       (.I0(\memory_reg[4]_P_n_0 ),
        .I1(\memory_reg[4]_LDC_n_0 ),
        .I2(\memory_reg[4]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[3]_C_n_0 ),
        .O(\memory[3]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[3]_P_i_1__0 
       (.I0(\memory_reg[4]_P_n_0 ),
        .I1(\memory_reg[4]_LDC_n_0 ),
        .I2(\memory_reg[4]_C_n_0 ),
        .O(\memory[3]_P_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[4]_C_i_1__0 
       (.I0(\memory_reg[5]_P_n_0 ),
        .I1(\memory_reg[5]_LDC_n_0 ),
        .I2(\memory_reg[5]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[4]_C_n_0 ),
        .O(\memory[4]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[4]_P_i_1__0 
       (.I0(\memory_reg[5]_P_n_0 ),
        .I1(\memory_reg[5]_LDC_n_0 ),
        .I2(\memory_reg[5]_C_n_0 ),
        .O(\memory[4]_P_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \memory[5]_C_i_1__0 
       (.I0(\memory_reg[6]_P_n_0 ),
        .I1(\memory_reg[6]_LDC_n_0 ),
        .I2(\memory_reg[6]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(\memory_reg[5]_C_n_0 ),
        .O(\memory[5]_C_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory[5]_P_i_1__0 
       (.I0(\memory_reg[6]_P_n_0 ),
        .I1(\memory_reg[6]_LDC_n_0 ),
        .I2(\memory_reg[6]_C_n_0 ),
        .O(\memory[5]_P_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    \memory[6]_C_i_1__0 
       (.I0(\memory_reg[7]_LDC_n_0 ),
        .I1(\memory_reg[7]_P_n_0 ),
        .I2(enable),
        .I3(reset_IBUF),
        .I4(\memory_reg[6]_C_n_0 ),
        .O(\memory[6]_C_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory[6]_P_i_1__0 
       (.I0(\memory_reg[7]_LDC_n_0 ),
        .I1(\memory_reg[7]_P_n_0 ),
        .O(\memory[6]_P_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory[7]_P_i_1 
       (.I0(enable),
        .I1(reset_IBUF),
        .O(enable_reg));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[0]_LDC_i_2__0_n_0 ),
        .D(\memory[0]_C_i_1__0_n_0 ),
        .Q(\memory_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[0]_LDC 
       (.CLR(\memory_reg[0]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[0]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[0]_LDC_i_1__0 
       (.I0(data_b_IBUF[0]),
        .I1(reset_IBUF),
        .O(\memory_reg[0]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[0]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[0]),
        .O(\memory_reg[0]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[0]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[0]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[1]_LDC_i_2__0_n_0 ),
        .D(\memory[1]_C_i_1__0_n_0 ),
        .Q(\memory_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[1]_LDC 
       (.CLR(\memory_reg[1]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[1]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[1]_LDC_i_1__0 
       (.I0(data_b_IBUF[1]),
        .I1(reset_IBUF),
        .O(\memory_reg[1]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[1]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[1]),
        .O(\memory_reg[1]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[1]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[1]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[2]_LDC_i_2__0_n_0 ),
        .D(\memory[2]_C_i_1__0_n_0 ),
        .Q(\memory_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[2]_LDC 
       (.CLR(\memory_reg[2]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[2]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[2]_LDC_i_1__0 
       (.I0(data_b_IBUF[2]),
        .I1(reset_IBUF),
        .O(\memory_reg[2]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[2]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[2]),
        .O(\memory_reg[2]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[2]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[2]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[3]_LDC_i_2__0_n_0 ),
        .D(\memory[3]_C_i_1__0_n_0 ),
        .Q(\memory_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[3]_LDC 
       (.CLR(\memory_reg[3]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[3]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[3]_LDC_i_1__0 
       (.I0(data_b_IBUF[3]),
        .I1(reset_IBUF),
        .O(\memory_reg[3]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[3]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[3]),
        .O(\memory_reg[3]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[3]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[3]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[4]_LDC_i_2__0_n_0 ),
        .D(\memory[4]_C_i_1__0_n_0 ),
        .Q(\memory_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[4]_LDC 
       (.CLR(\memory_reg[4]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[4]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[4]_LDC_i_1__0 
       (.I0(data_b_IBUF[4]),
        .I1(reset_IBUF),
        .O(\memory_reg[4]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[4]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[4]),
        .O(\memory_reg[4]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[4]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[4]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[5]_LDC_i_2__0_n_0 ),
        .D(\memory[5]_C_i_1__0_n_0 ),
        .Q(\memory_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[5]_LDC 
       (.CLR(\memory_reg[5]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[5]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[5]_LDC_i_1__0 
       (.I0(data_b_IBUF[5]),
        .I1(reset_IBUF),
        .O(\memory_reg[5]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[5]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[5]),
        .O(\memory_reg[5]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[5]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[5]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\memory_reg[6]_LDC_i_2__0_n_0 ),
        .D(\memory[6]_C_i_1__0_n_0 ),
        .Q(\memory_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[6]_LDC 
       (.CLR(\memory_reg[6]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[6]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[6]_LDC_i_1__0 
       (.I0(data_b_IBUF[6]),
        .I1(reset_IBUF),
        .O(\memory_reg[6]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[6]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[6]),
        .O(\memory_reg[6]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(\memory[6]_P_i_1__0_n_0 ),
        .PRE(\memory_reg[6]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[6]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \memory_reg[7]_LDC 
       (.CLR(\memory_reg[7]_LDC_i_2__0_n_0 ),
        .D(1'b1),
        .G(\memory_reg[7]_LDC_i_1__0_n_0 ),
        .GE(1'b1),
        .Q(\memory_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[7]_LDC_i_1__0 
       (.I0(data_b_IBUF[7]),
        .I1(reset_IBUF),
        .O(\memory_reg[7]_LDC_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \memory_reg[7]_LDC_i_2__0 
       (.I0(reset_IBUF),
        .I1(data_b_IBUF[7]),
        .O(\memory_reg[7]_LDC_i_2__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \memory_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(enable_reg),
        .D(1'b0),
        .PRE(\memory_reg[7]_LDC_i_1__0_n_0 ),
        .Q(\memory_reg[7]_P_n_0 ));
  LUT4 #(
    .INIT(16'hEF80)) 
    out_i_1
       (.I0(wire_b),
        .I1(wire_a),
        .I2(enable),
        .I3(cin),
        .O(out_reg_0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    out_i_1__1
       (.I0(\memory_reg[0]_P_n_0 ),
        .I1(\memory_reg[0]_LDC_n_0 ),
        .I2(\memory_reg[0]_C_n_0 ),
        .I3(enable),
        .I4(reset_IBUF),
        .I5(wire_b),
        .O(out_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(out_i_1__1_n_0),
        .Q(wire_b));
endmodule

(* NotValidForBitStream *)
module serial_adder
   (data_a,
    data_b,
    clk,
    reset,
    out,
    cout);
  input [7:0]data_a;
  input [7:0]data_b;
  input clk;
  input reset;
  output [7:0]out;
  output cout;

  wire cin;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]count_reg;
  wire cout;
  wire cout_OBUF;
  wire cout_i_1_n_0;
  wire cout_temp;
  wire [7:0]data_a;
  wire [7:0]data_a_IBUF;
  wire [7:0]data_b;
  wire [7:0]data_b_IBUF;
  wire enable;
  wire [7:0]out;
  wire \out[7]_i_1_n_0 ;
  wire [7:0]out_OBUF;
  wire [3:0]p_0_in;
  wire piso_b_n_0;
  wire piso_b_n_2;
  wire reset;
  wire reset_IBUF;
  wire sum;
  wire wire_a;
  wire wire_b;

  full_adder adder
       (.D(sum),
        .cin(cin),
        .cout_temp(cout_temp),
        .wire_a(wire_a),
        .wire_b(wire_b));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(count_reg[3]));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  LUT6 #(
    .INIT(64'h0000000055570000)) 
    cout_i_1
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(enable),
        .I5(reset_IBUF),
        .O(cout_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(clk_IBUF_BUFG),
        .CE(cout_i_1_n_0),
        .D(cout_temp),
        .Q(cout_OBUF),
        .R(1'b0));
  IBUF \data_a_IBUF[0]_inst 
       (.I(data_a[0]),
        .O(data_a_IBUF[0]));
  IBUF \data_a_IBUF[1]_inst 
       (.I(data_a[1]),
        .O(data_a_IBUF[1]));
  IBUF \data_a_IBUF[2]_inst 
       (.I(data_a[2]),
        .O(data_a_IBUF[2]));
  IBUF \data_a_IBUF[3]_inst 
       (.I(data_a[3]),
        .O(data_a_IBUF[3]));
  IBUF \data_a_IBUF[4]_inst 
       (.I(data_a[4]),
        .O(data_a_IBUF[4]));
  IBUF \data_a_IBUF[5]_inst 
       (.I(data_a[5]),
        .O(data_a_IBUF[5]));
  IBUF \data_a_IBUF[6]_inst 
       (.I(data_a[6]),
        .O(data_a_IBUF[6]));
  IBUF \data_a_IBUF[7]_inst 
       (.I(data_a[7]),
        .O(data_a_IBUF[7]));
  IBUF \data_b_IBUF[0]_inst 
       (.I(data_b[0]),
        .O(data_b_IBUF[0]));
  IBUF \data_b_IBUF[1]_inst 
       (.I(data_b[1]),
        .O(data_b_IBUF[1]));
  IBUF \data_b_IBUF[2]_inst 
       (.I(data_b[2]),
        .O(data_b_IBUF[2]));
  IBUF \data_b_IBUF[3]_inst 
       (.I(data_b[3]),
        .O(data_b_IBUF[3]));
  IBUF \data_b_IBUF[4]_inst 
       (.I(data_b[4]),
        .O(data_b_IBUF[4]));
  IBUF \data_b_IBUF[5]_inst 
       (.I(data_b[5]),
        .O(data_b_IBUF[5]));
  IBUF \data_b_IBUF[6]_inst 
       (.I(data_b[6]),
        .O(data_b_IBUF[6]));
  IBUF \data_b_IBUF[7]_inst 
       (.I(data_b[7]),
        .O(data_b_IBUF[7]));
  d_flipflop dff
       (.cin(cin),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out_reg_0(piso_b_n_2),
        .reset_IBUF(reset_IBUF));
  FDPE #(
    .INIT(1'b1)) 
    enable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[7]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(enable));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \out[7]_i_1 
       (.I0(enable),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(\out[7]_i_1_n_0 ));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[1]),
        .Q(out_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[2]),
        .Q(out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[3]),
        .Q(out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[4]),
        .Q(out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[5]),
        .Q(out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[6]),
        .Q(out_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(out_OBUF[7]),
        .Q(out_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(sum),
        .Q(out_OBUF[7]));
  piso piso_a
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_a_IBUF(data_a_IBUF),
        .enable(enable),
        .\memory_reg[0]_P_0 (piso_b_n_0),
        .reset_IBUF(reset_IBUF),
        .wire_a(wire_a));
  piso_0 piso_b
       (.cin(cin),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_b_IBUF(data_b_IBUF),
        .enable(enable),
        .enable_reg(piso_b_n_0),
        .out_reg_0(piso_b_n_2),
        .reset_IBUF(reset_IBUF),
        .wire_a(wire_a),
        .wire_b(wire_b));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
