`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:30:20 11/24/2014
// Design Name:   letter_sm
// Module Name:   C:/Users/Kevin Su/Documents/Files/USC/EE 254L/ee254l_project/letter_sm_tb.v
// Project Name:  ee254l_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: letter_sm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module letter_sm_tb;

	// Inputs
	reg Start;
	reg Clk;
	reg Reset;
	reg L;
	reg S;
	reg T;

	// Outputs
	wire Tclear;
	wire qA;
	wire qB;
	wire qC;
	wire qD;
	wire qE;
	wire qF;
	wire qG;
	wire qH;
	wire qI;
	wire qJ;
	wire qK;
	wire qL;
	wire qM;
	wire qN;
	wire qO;
	wire qP;
	wire qQ;
	wire qR;
	wire qS;
	wire qT;
	wire qU;
	wire qV;
	wire qW;
	wire qX;
	wire qY;
	wire qZ;
	wire [25:0] letter_code;

	// Instantiate the Unit Under Test (UUT)
	letter_sm uut (
		.Start(Start), 
		.Clk(Clk), 
		.Reset(Reset), 
		.L(L), 
		.S(S), 
		.T(T), 
		.Tclear(Tclear), 
		.qA(qA), 
		.qB(qB), 
		.qC(qC), 
		.qD(qD), 
		.qE(qE), 
		.qF(qF), 
		.qG(qG), 
		.qH(qH), 
		.qI(qI), 
		.qJ(qJ), 
		.qK(qK), 
		.qL(qL), 
		.qM(qM), 
		.qN(qN), 
		.qO(qO), 
		.qP(qP), 
		.qQ(qQ), 
		.qR(qR), 
		.qS(qS), 
		.qT(qT), 
		.qU(qU), 
		.qV(qV), 
		.qW(qW), 
		.qX(qX), 
		.qY(qY), 
		.qZ(qZ), 
		.letter_code(letter_code)
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
		L = 0;
		S = 0;
		T = 0;

		// Wait 10 ns for global reset to finish
		#10;
		Reset = 0;
        Start = 1; //start simulating
		  #5
		// Add stimulus here
//REMEMBER, SCEN L/S inputs!!! Length of button press doesn't matter
		
//The letter A (S L L)
		S = 1; #20; S = 0;
		#30 L = 1; #20; L = 0;
		#30 T = 1; #20; T = 0;
		
		#60
//The letter B (L S S S)
		L = 1; #20; L = 0;
		#30 S = 1; #20; S = 0;
		#30 S = 1; #20; S = 0;
		#30 S = 1; #20; S = 0;
		#30 T = 1; #20; T = 0;
		
		#60	
//The letter A (L S L S)
		L = 1; #20; L = 0;
		#30 S = 1; #20; S = 0;
		#30 L = 1; #20; L = 0;
		#30 S = 1; #20; S = 0;
		#30 T = 1; #20; T = 0;
		
		#60		
//The letter D (L S S)
		L = 1; #20; L = 0;
		#30 S = 1; #20; S = 0;
		#30 S = 1; #20; S = 0;
		#30 T = 1; #20; T = 0;
		
		#60	
//Failed A (S TIMED OUT L L) actual E M
		S = 1; #20; S = 0;
		#30 T = 1; #20; T = 0;
		#30 L = 1; #20; L = 0;
		#30 L = 1; #20; L = 0;
		#30 T = 1; #20; T = 0;
		
	end
endmodule
