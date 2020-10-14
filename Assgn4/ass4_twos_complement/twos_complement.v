`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 4 
// Project Name: twos_complement
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
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
