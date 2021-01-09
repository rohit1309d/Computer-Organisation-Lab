`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 07:45:14 PM
// Design Name: 
// Module Name: twos_complement
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


module twos_complement(input in, input clk, input reset, output out);

    reg out;
    reg state;
    
    always@(posedge clk, posedge reset)
    begin
        if(reset)
            state <= 0;
        else
			begin
				case(state)
					0:
						begin
							if(in == 0)
								begin
									state <= 0;
									out <= 0;
								end
							else 
							begin
									state <= 1;
									out <= 1;
							end
						end
					1:
						begin
							if(in == 0)
								begin
									state <= 1;
									out <= 1;
								end
							else 
							begin
									state <= 1;
									out <= 0;
							end
						end
			endcase
	   end
	 end

endmodule
