`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:55 11/30/2014
// Design Name:   ee201_debouncer
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/ee201_debounce_DPB_SCEN_CCEN_MCEN.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ee201_debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ee201_debounce_DPB_SCEN_CCEN_MCEN;

	// Inputs
	reg CLK;
	reg RESET;
	reg PB;

	// Outputs
	wire DPB;
	wire SCEN;
	wire MCEN;
	wire CCEN;

	// Instantiate the Unit Under Test (UUT)
	ee201_debouncer uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.PB(PB), 
		.DPB(DPB), 
		.SCEN(SCEN), 
		.MCEN(MCEN), 
		.CCEN(CCEN)
	);
always begin
		#10;
		CLK = ~CLK;
	end
	
	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		PB = 0;

		// Wait 100 ns for global reset to finish
		#10;
		RESET = 0;
		#5
		// Add stimulus here
      PB = 1;
		#1000
		PB = 0;
		// Add stimulus here

	end
      
endmodule

