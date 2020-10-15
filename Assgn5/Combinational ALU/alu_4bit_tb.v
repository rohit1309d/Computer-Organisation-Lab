//Assignment - 5
//Problem - 1(Testbench)
//Semester - 5
//Group - 28
//Kantevari Pruthvi-18CS10024
//Dhaipule Rohit -18CS10013

module alu_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    reg [3:0] s;
    reg m;
    //wire cout, p, g;
    wire [3:0] f;
    alu_4bit a1(a,b,cin,m,s,cout,f);
    initial
    begin
        $display("Output for different selection inputs when m=0");
        a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0000; m=1'b0;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0101; cin = 1'b1; s=4'b0001; m=1'b0;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0011; cin = 1'b1; s=4'b0010; m=1'b0;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0101; cin = 1'b0; s=4'b0011; m=1'b0;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0101; cin = 1'b1; s=4'b0100; m=1'b0;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0101; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0110; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0111; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b1000; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b1001; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b1010; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b1011; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
        #20 a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b1100; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);

        #20 $display("Output for different selection inputs when m=1");
        a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0000; m=1'b1;
        #20 $display("Output for different selection inputs when m=1");
        a=4'b0010; b=4'b0001; cin = 1'b0; s=4'b0000; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);    
        #20 a=4'b0010; b=4'b0101; cin = 1'b1; s=4'b0100; m=1'b1;
        $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b",a,b,cin,s,f,cout);
    end
endmodule