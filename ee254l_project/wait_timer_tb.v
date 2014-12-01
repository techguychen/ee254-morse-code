`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:54:44 11/24/2014
// Design Name:   wait_timer
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/wait_timer_tb.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wait_timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wait_timer_tb;

	// Inputs
	reg Start;
	reg Clk;
	reg Reset;
	reg [31:0] Timeout;
	reg Tclear;

	// Outputs
	wire T;
	wire [31:0] I;

	// Instantiate the Unit Under Test (UUT)
	wait_timer uut (
		.Start(Start), 
		.Clk(Clk), 
		.Reset(Reset), 
		.T(T), 
		.Timeout(Timeout), 
		.Tclear(Tclear), 
		.I(I)
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
		Timeout = 16; //For example purposes, use Timeout = 16 (corresponds to 4th LSB=> 100MHz/2^4 Tperiod = 160ns
		Tclear = 0;

// Wait 10 ns for global reset to finish
		#10;
		Reset = 0;
		#10
        Start = 1; //start simulating
		  #5
        
		// Add stimulus here
//Tclear timeout
		Tclear = 1; #20 Tclear = 0;
	end
      
endmodule
