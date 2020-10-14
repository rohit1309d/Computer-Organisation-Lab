`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 10:51:32 PM
// Design Name: 
// Module Name: serial_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module serial_adder_tb;
  reg [7:0] data_a, data_b;
  reg clk, reset;

  wire [7:0] out;
  wire cout;

  serial_adder s_adder(data_a, data_b, clk, reset, out, cout);

  initial begin
    $monitor("data_a = %8b, data_b = %8b, reset = %b, out=%b", data_a, data_b, reset, out);
    $dumpvars(0, serial_adder_tb);
    clk = 0;
    data_a = 8'b00100010; data_b = 8'b00001010; reset = 1; #20;
    reset = 0; #200;
    data_a = 8'b00010100; data_b = 8'b00010101; reset = 1; #20;
    reset = 0; #200;
    $finish;
  end

  always #10 clk = !clk;

endmodule


