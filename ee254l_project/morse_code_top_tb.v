`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:51 11/30/2014
// Design Name:   morse_code_top
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/morse_code_top_tb.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: morse_code_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module morse_code_top_tb;

	// Inputs
	reg ClkPort;
	reg BtnL;
	reg BtnU;
	reg BtnD;
	reg BtnR;
	reg BtnC;
	reg Sw7;
	reg Sw6;
	reg Sw5;
	reg Sw4;
	reg Sw3;
	reg Sw2;
	reg Sw1;
	reg Sw0;

	// Outputs
	wire MemOE;
	wire MemWR;
	wire RamCS;
	wire FlashCS;
	wire QuadSpiFlashCS;
	wire Ld7;
	wire Ld6;
	wire Ld5;
	wire Ld4;
	wire Ld3;
	wire Ld2;
	wire Ld1;
	wire Ld0;
	wire An3;
	wire An2;
	wire An1;
	wire An0;
	wire Ca;
	wire Cb;
	wire Cc;
	wire Cd;
	wire Ce;
	wire Cf;
	wire Cg;
	wire Dp;

	// Instantiate the Unit Under Test (UUT)
	morse_code_top uut (
		.MemOE(MemOE), 
		.MemWR(MemWR), 
		.RamCS(RamCS), 
		.FlashCS(FlashCS), 
		.QuadSpiFlashCS(QuadSpiFlashCS), 
		.ClkPort(ClkPort), 
		.BtnL(BtnL), 
		.BtnU(BtnU), 
		.BtnD(BtnD), 
		.BtnR(BtnR), 
		.BtnC(BtnC), 
		.Sw7(Sw7), 
		.Sw6(Sw6), 
		.Sw5(Sw5), 
		.Sw4(Sw4), 
		.Sw3(Sw3), 
		.Sw2(Sw2), 
		.Sw1(Sw1), 
		.Sw0(Sw0), 
		.Ld7(Ld7), 
		.Ld6(Ld6), 
		.Ld5(Ld5), 
		.Ld4(Ld4), 
		.Ld3(Ld3), 
		.Ld2(Ld2), 
		.Ld1(Ld1), 
		.Ld0(Ld0), 
		.An3(An3), 
		.An2(An2), 
		.An1(An1), 
		.An0(An0), 
		.Ca(Ca), 
		.Cb(Cb), 
		.Cc(Cc), 
		.Cd(Cd), 
		.Ce(Ce), 
		.Cf(Cf), 
		.Cg(Cg), 
		.Dp(Dp)
	);
initial begin
		ClkPort = 0;
	end
	
	always begin
		#5;
		ClkPort = ~ClkPort;
	end
	
	initial begin
		BtnC = 1;
		#120;
		BtnC = 0;
	end

	initial begin
		// Initialize Inputs
		BtnL = 0;
		BtnU = 0;
		BtnD = 0;
		BtnR = 0;
		Sw7 = 0;
		Sw6 = 0;
		Sw5 = 0;
		Sw4 = 0;
		Sw3 = 0;
		Sw2 = 0;
		Sw1 = 0;
		Sw0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Sw1 = 1;
		
		//calibration
		BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0;
		#320 //Random, test CALC state
		/*L*/BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0;
		#378
		BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0; #20 BtnL = 1; #20 BtnL = 0;
		#477
		/*L*/BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0; #200 BtnL = 1; #200 BtnL = 0;
		
		
		#100 Sw1 = 0;
		#50 Sw0 = 1;
		//letters
		//The letter A (S L)
		BtnL = 1; #20; BtnL = 0;
		#20 BtnL = 1; #200; BtnL = 0;
		
	end
      
endmodule

