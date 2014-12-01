`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:32 11/24/2014
// Design Name:   calibration
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/calibration_tb.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calibration
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module calibration_tb;

	// Inputs
	reg Start;
	reg Clk;
	reg Reset;
	reg L;
	reg S;

	// Outputs
	wire [31:0] Timeout;
	wire [31:0] T_count1;
	wire [31:0] T_count2;
	wire [31:0] T_count3;
	wire [2:0] state;
	wire [2:0] dot_cnt;
	wire [2:0] dash_cnt;

	// Instantiate the Unit Under Test (UUT)
	calibration uut (
		.Start(Start), 
		.Clk(Clk), 
		.Reset(Reset), 
		.L(L), 
		.S(S), 
		.Timeout(Timeout), 
		.T_count1(T_count1), 
		.T_count2(T_count2), 
		.T_count3(T_count3), 
		.state(state), 
		.dot_cnt(dot_cnt), 
		.dash_cnt(dash_cnt)
	);

always begin
		#10;
		Clk = ~Clk;
	end
	
	initial begin
		// Initialize Inputs
		Start = 0;
		Clk = 0;
		Reset = 1;
		L = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#10;
		Reset = 0;
		Start = 1;
		#5
		// Add stimulus here
		/*
		S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0;
		#160 //for the sake of example, we end up producing Timeout = 8
		L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0;
		#160
		S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0;
		#160
		L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0;
		*/
		S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0;
		#320 //Random, test CALC state
		L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0;
		#378
		S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0; #20 S = 1; #20 S = 0;
		#477
		L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0; #20 L = 1; #20 L = 0;


	end
endmodule