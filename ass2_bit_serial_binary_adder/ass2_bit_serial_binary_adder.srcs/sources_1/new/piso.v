`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 10:46:18 PM
// Design Name: 
// Module Name: piso
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

module piso(clk, enable, rst, data, out);
  input enable, clk, rst;
  input [7:0] data;
  output out;

  reg out;
  reg [7:0] memory;

  always @ (posedge clk, posedge rst) begin
    if (rst == 1'b1) begin
      out <= 1'b0;
      memory <= data;
    end
    else begin
      if (enable) begin
        out = memory[0];
        memory = memory >> 1'b1;
      end
    end
  end
endmodule
