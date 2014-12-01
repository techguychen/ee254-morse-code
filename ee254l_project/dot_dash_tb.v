`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:32 11/23/2014
// Design Name:   dot_dash
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/dot_dash_tb.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dot_dash
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dot_dash_tb;

	// Inputs
	reg Start;
	reg Clk;
	reg Reset;
	reg SCEN;
	reg MCEN;
	reg DPB;

	// Outputs
	wire L;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	dot_dash uut (
		.Start(Start), 
		.Clk(Clk), 
		.Reset(Reset), 
		.SCEN(SCEN), 
		.MCEN(MCEN), 
		.DPB(DPB), 
		.L(L), 
		.S(S)
	);
initial begin
		Clk = 0;
	end
	
	always begin
		#10;
		Clk = ~ Clk;
	end
	
	initial begin
		Reset = 1;
		#120;
		Reset = 0;
	end
	
	initial begin
		// Initialize Inputs
		Start = 0;
		Clk = 0;
		Reset = 1;
		SCEN = 0;
		MCEN = 0;
		DPB = 0;

// Wait 10 ns for global reset to finish
		#10;
		Reset = 0;
        Start = 1; //start simulating
		  #5
		// Add stimulus here

//Produce a dot
		DPB = 1; SCEN = 1; MCEN = 1; #20 SCEN = 0; MCEN = 0; #40 DPB = 0;
		
//Produce a dash
		#300 DPB = 1; SCEN = 1; MCEN = 1; #20 SCEN = 0; MCEN = 0;
		#140 MCEN = 1; #20 MCEN = 0; #20 MCEN = 1;
		
		#40 DPB = 0;


	end
      
endmodule

