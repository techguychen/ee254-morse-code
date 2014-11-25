/*
File     : divider_top_with_debounce.v 
Author   : Gandhi Puvvada
Revision  : 1.2
Date : Feb 15, 2008, 10/14/08, 2/22/2010, 2/12/2012
*/

/*
 
 ******* Important difference to note *******
 In the divider_top.v for the divider simple, we had the BtnL to serve as  
 the Start button and BtnR to serve as the Ack button. Here, BtnL serves as
 both Start and Ack buttons. We also run the core design at full 100MHz clock.
 ********************************************
 
*/
module morse_code_top (   
		MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips

        ClkPort,                           // the 100 MHz incoming clock signal
		
		BtnL, BtnU, BtnD, BtnR,            // the Left, Up, Down, and the Right buttons 		BtnL, BtnR,
		BtnC,                              // the center button (this is our reset in most of our designs)
		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, // 8 switches
		Ld7, Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, // 8 LEDs
		An3, An2, An1, An0,			       // 4 anodes
		Ca, Cb, Cc, Cd, Ce, Cf, Cg,        // 7 cathodes
		Dp                                 // Dot Point Cathode on SSDs
	  );
	  
	  
	/*  INPUTS */
	// Clock & Reset I/O
	input		ClkPort;	
	// Project Specific Inputs
	input		BtnL, BtnU, BtnD, BtnR, BtnC;	
	input		Sw7, Sw6, Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;
	
	
	/*  OUTPUTS */
	// Control signals on Memory chips 	(to disable them)
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
	// Project Specific Outputs
	// LEDs
	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7;
	// SSD Outputs
	output 	Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output 	An0, An1, An2, An3;	

	
	/*  LOCAL SIGNALS */
	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;
	wire [1:0] 	ssdscan_clk;
	
	wire  		SCEN_DD, MCEN_DD, DPB_DD; // from the debouncer
	wire [30:0] Timeout_cal; //from Calibration
	wire 		DOT, DASH; //from dot_dash
	wire 		Tclear_letter; //from letter_sm
	wire 		qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ; //from letter_sm
	wire [25:0] letter_code; //from letter_sm
	wire 		T_en; //from wait_timer

// to produce divided clock
	reg [26:0]	DIV_CLK;
// SSD (Seven Segment Display)
	reg [25:0]	SSD;
	wire [25:0]	SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  	SSD_CATHODES;
	
	
//------------	
// Disable the three memories so that they do not interfere with the rest of the design.
	assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;
	
	
//------------
// CLOCK DIVISION

	// The clock division circuitary works like this:
	//
	// ClkPort ---> [BUFGP2] ---> board_clk
	// board_clk ---> [clock dividing counter] ---> DIV_CLK
	// DIV_CLK ---> [constant assignment] ---> sys_clk;
	
	BUFGP BUFGP1 (board_clk, ClkPort); 	

// As the ClkPort signal travels throughout our design,
// it is necessary to provide global routing to this signal. 
// The BUFGPs buffer these input ports and connect them to the global 
// routing resources in the FPGA.

	// BUFGP BUFGP2 (Reset, BtnC); In the case of Spartan 3E (on Nexys-2 board), we were using BUFGP to provide global routing for the reset signal. But Spartan 6 (on Nexys-3) does not allow this.
	assign Reset = BtnC;
	assign cal_Start = ~Sw0;
	assign Start = Sw0;
	assign dot_dash_Start = 1;
	
//------------
	// Our clock is too fast (100MHz) for SSD scanning
	// create a series of slower "divided" clocks
	// each successive bit is 1/2 frequency
  always @(posedge board_clk, posedge Reset) 	
    begin							
        if (Reset)
		DIV_CLK <= 0;
        else
		DIV_CLK <= DIV_CLK + 1'b1;
    end
//-------------------	
	// In this design, we run the core design at full 50MHz clock!
	assign	sys_clk = board_clk;
	// assign	sys_clk = DIV_CLK[25];

	//------------         

	
	//assign Start = BtnL; assign Ack = BtnR; // This was used in the divider_simple
	// Unlike in the divider_simple, here we use one button BtnL to represent both Start and Ack
	// Instantiate the debouncer	// module ee201_debouncer(CLK, RESET, PB, DPB, SCEN, MCEN, CCEN);
	// notice the "Start_Ack_SCEN" produced here and sent into the divider core further below
ee201_debouncer #(.N_dc(25)) ee201_debouncer_1 
        (.CLK(sys_clk), .RESET(Reset), .PB(BtnL), .DPB(DPB_DD), .SCEN(SCEN_DD), .MCEN(MCEN_DD), .CCEN( ));
						
	// instantiate the calibration design
	calibration calibration_1(.Start(cal_Start), .Clk(sys_clk), .Reset(Reset), .L(DASH), .S(DOT), .Timeout(Timeout_cal), .T_count1(), .T_count2(), .T_count3(), .state(), .dot_cnt(), .dash_cnt());
	// instantiate the dot_dash design
	dot_dash dot_dash_1(.Start(dot_dash_Start), .Clk(sys_clk), .Reset(Reset), .SCEN(SCEN_DD), .MCEN(MCEN_DD), .DPB(DPB_DD), .L(DASH), .S(DOT));
	wait_timer wait_timer_1(.Start(Start), .Clk(sys_clk), .Reset(Reset), .T(T_en), .Timeout(Timeout_cal), .Tclear(Tclear_letter), .I());
	letter_sm letter_sm_1(.Start(Start), .Clk(sys_clk), .Reset(Reset), .L(DASH), .S(DOT), .T(T_en), .Tclear(Tclear_letter), .qA(qA), .qB(qB), .qC(qC), .qD(qD), .qE(qE), .qF(qF), .qG(qG), .qH(qH), .qI(qI), .qJ(qJ), .qK(qK), .qL(qL), .qM(qM), .qN(qN), .qO(qO), .qP(qP), .qQ(qQ), .qR(qR), .qS(qS), .qT(qT), .qU(qU), .qV(qV), .qW(qW), .qX(qX), .qY(qY), .qZ(qZ), .letter_code(letter_code));
//------------
// OUTPUT: LEDS

	assign {Ld3, Ld2, Ld1, Ld0} = {BtnL, BtnU, BtnR, BtnD}; // Reset is driven by BtnC
//------------
// SSD (Seven Segment Display)
	// reg [3:0]	SSD;
	// wire [3:0]	SSD3, SSD2, SSD1, SSD0;
	
	//SSDs display Xin, Yin, Quotient, and Reminder  
	assign SSD0 = letter_code;

	// need a scan clk for the seven segment display 
	
	// 100 MHz / 2^18 = 381.5 cycles/sec ==> frequency of DIV_CLK[17]
	// 100 MHz / 2^19 = 190.7 cycles/sec ==> frequency of DIV_CLK[18]
	// 100 MHz / 2^20 =  95.4 cycles/sec ==> frequency of DIV_CLK[19]
	
	// 381.5 cycles/sec (2.62 ms per digit) [which means all 4 digits are lit once every 10.5 ms (reciprocal of 95.4 cycles/sec)] works well.
	
	//                  --|  |--|  |--|  |--|  |--|  |--|  |--|  |--|  |   
    //                    |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
	//  DIV_CLK[17]       |__|  |__|  |__|  |__|  |__|  |__|  |__|  |__|
	//
	//               -----|     |-----|     |-----|     |-----|     |
    //                    |  0  |  1  |  0  |  1  |     |     |     |     
	//  DIV_CLK[18]       |_____|     |_____|     |_____|     |_____|
	//
	//         -----------|           |-----------|           |
    //                    |  0     0  |  1     1  |           |           
	//  DIV_CLK[19]       |___________|           |___________|
	//
	
	assign ssdscan_clk = DIV_CLK[19:18];

	
	assign An0	= !(~(ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 00
	assign An1	= !(~(ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 01
	assign An2	=  !((ssdscan_clk[1]) && ~(ssdscan_clk[0]));  // when ssdscan_clk = 10
	assign An3	=  !((ssdscan_clk[1]) &&  (ssdscan_clk[0]));  // when ssdscan_clk = 11
	
	
	always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
	begin : SSD_SCAN_OUT
		case (ssdscan_clk) 
				  2'b00: SSD = SSD0;
				  2'b01: SSD = SSD1;
				  2'b10: SSD = SSD2;
				  2'b11: SSD = SSD3;
		endcase 
	end

	// Following is Hex-to-SSD conversion
	always @ (SSD) 
	begin : HEX_TO_SSD
		case (SSD) 
			26'b10000000000000000000000000: SSD_CATHODES = 8'b00010000; // A
			26'b01000000000000000000000000: SSD_CATHODES = 8'b11000000; // B
			26'b00100000000000000000000000: SSD_CATHODES = 8'b01100010; // C
			26'b00010000000000000000000000: SSD_CATHODES = 8'b10000100; // D
			26'b00001000000000000000000000: SSD_CATHODES = 8'b01100000; // E
			26'b00000100000000000000000000: SSD_CATHODES = 8'b01110000; // F
			26'b00000010000000000000000000: SSD_CATHODES = 8'b01000000; // G
			26'b00000001000000000000000000: SSD_CATHODES = 8'b10010000; // H
			26'b00000000100000000000000000: SSD_CATHODES = 8'b10011110; // I
			26'b00000000010000000000000000: SSD_CATHODES = 8'b10000110; // J
			26'b00000000001000000000000000: SSD_CATHODES = 8'b10100000; // K
			26'b00000000000100000000000000: SSD_CATHODES = 8'b11100010; // L
			26'b00000000000010000000000000: SSD_CATHODES = 8'b01010110; // M
			26'b00000000000001000000000000: SSD_CATHODES = 8'b11010100; // N
			26'b00000000000000100000000000: SSD_CATHODES = 8'b00000010; // O
			26'b00000000000000010000000000: SSD_CATHODES = 8'b00110000; // P
			26'b00000000000000001000000000: SSD_CATHODES = 8'b00011000; // Q
			26'b00000000000000000100000000: SSD_CATHODES = 8'b00100000; // R   
			26'b00000000000000000010000000: SSD_CATHODES = 8'b01001000; // S
			26'b00000000000000000001000000: SSD_CATHODES = 8'b11110000; // T
			26'b00000000000000000000100000: SSD_CATHODES = 8'b10000001; // U
			26'b00000000000000000000010000: SSD_CATHODES = 8'b11000011; // V
			26'b00000000000000000000001000: SSD_CATHODES = 8'b10000000; // W
			26'b00000000000000000000000100: SSD_CATHODES = 8'b10010010; // X
			26'b00000000000000000000000010: SSD_CATHODES = 8'b10101000; // Y
			26'b00000000000000000000000001: SSD_CATHODES = 8'b00100100; // Z			
			default: SSD_CATHODES = 26'bXXXXXXXXXXXXXXXXXXXXXXXXXX; // default is not needed as we covered all cases
		endcase
	end	
	
	// reg [7:0]  SSD_CATHODES;
	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES};
	
endmodule
