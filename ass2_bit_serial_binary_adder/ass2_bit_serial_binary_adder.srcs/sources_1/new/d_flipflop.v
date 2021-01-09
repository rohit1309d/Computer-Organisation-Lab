`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 10:43:22 PM
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(d, clk, enable, reset, out);
  input d, clk, enable, reset;
  output out;

  reg out;

  always @ (posedge clk or posedge reset) begin
    if (reset)
      out = 0;
    else
      if (enable)
        out = d;
  end
endmodule