`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// VGA verilog template
// Author:  Da Cheng
// Modified: Joseph Chen
//////////////////////////////////////////////////////////////////////////////////
module vga_demo(ClkPort, vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b, Sw0, Sw1, btnU, btnD, btnL,
	St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar, qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ);
	input ClkPort, Sw0, btnU, btnD, btnL, Sw0, Sw1, qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ;
	output St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar;
	output vga_h_sync, vga_v_sync, vga_r, vga_g, vga_b;
	reg vga_r, vga_g, vga_b;
	
	//////////////////////////////////////////////////////////////////////////////////////////
	
	/*  LOCAL SIGNALS */
	wire	reset, start, ClkPort, board_clk, clk, button_clk;
	
	BUF BUF1 (board_clk, ClkPort); 	
	BUF BUF2 (reset, Sw0);
	BUF BUF3 (start, Sw1);
	
	reg [27:0]	DIV_CLK;
	always @ (posedge board_clk, posedge reset)  
	begin : CLOCK_DIVIDER
      if (reset)
			DIV_CLK <= 0;
      else
			DIV_CLK <= DIV_CLK + 1'b1;
	end	

	assign	button_clk = DIV_CLK[18];
	assign	clk = DIV_CLK[1];
	assign 	{St_ce_bar, St_rp_bar, Mt_ce_bar, Mt_St_oe_bar, Mt_St_we_bar} = {5'b11111};
	
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;

	hvsync_generator syncgen(.clk(clk), .reset(reset),.vga_h_sync(vga_h_sync), .vga_v_sync(vga_v_sync), .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));
	
	/////////////////////////////////////////////////////////////////
	///////////////		VGA control starts here		/////////////////
	/////////////////////////////////////////////////////////////////
	/*reg [9:0] position;
	
	always @(posedge DIV_CLK[21])
		begin
			if(reset)
				position<=240;
			else if(btnD && ~btnU)
				position<=position+2;
			else if(btnU && ~btnD)
				position<=position-2;	
		end*/
	
	reg [9:0] tone1XStart;
	reg [9:0] tone1XEnd;
	reg [9:0] tone2XStart;
	reg [9:0] tone2XEnd;
	reg [9:0] tone3XStart;
	reg [9:0] tone3XEnd;
	reg [9:0] tone4XStart;
	reg [9:0] tone4XEnd;
	
	always @(posedge DIV_CLK[21])
		begin
			if (reset)
				begin
					tone1XStart <= 0;
					tone1XEnd <= 0;
					tone2XStart <= 0;
					tone2XEnd <= 0;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qA)		//A
				begin
					tone1XStart <= 140;	//dot
					tone1XEnd <= 160;
					tone2XStart <= 250;	//dash
					tone2XEnd <= 290;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qB)		//B
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qC)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qD)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qE)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 0;
					tone2XEnd <= 0;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qF)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qG)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qH)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qI)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qJ)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 490;
					tone4XEnd <= 530;
				end
			else if (qK)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qL)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qM)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qN)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <=0;
					tone4XEnd <= 0;
				end
			else if (qO)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qP)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
			else if (qQ)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 490;
					tone4XEnd <= 530;
				end
			else if (qR)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qS)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qT)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 0;
					tone2XEnd <= 0;
					tone3XStart <= 0;
					tone3XEnd <= 0;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qU)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qV)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 490;
					tone4XEnd <= 530;
				end
			else if (qW)
				begin
					tone1XStart <= 140;
					tone1XEnd <= 160;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 0;
					tone4XEnd <= 0;
				end
			else if (qX)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 490;
					tone4XEnd <= 530;
				end
			else if (qY)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 260;
					tone2XEnd <= 280;
					tone3XStart <= 370;
					tone3XEnd <= 410;
					tone4XStart <= 490;
					tone4XEnd <= 530;
				end
			else if (qZ)
				begin
					tone1XStart <= 130;
					tone1XEnd <= 170;
					tone2XStart <= 250;
					tone2XEnd <= 290;
					tone3XStart <= 380;
					tone3XEnd <= 400;
					tone4XStart <= 500;
					tone4XEnd <= 520;
				end
		end
	//			dot1	dot2	dash1	dash2
	//tone1	140	160	130	170
	//tone2	260	280	250	290
	//tone3	380	400	370	410
	//tone4	500	520	490	530

	
	wire tones = tone1 | tone2 | tone3 | tone4;
	
	wire box1 = CounterY>=200 && CounterY<=280 && CounterX>=120 && CounterX<=180;
	wire box2 = CounterY>=200 && CounterY<=280 && CounterX>=240 && CounterX<=300;
	wire box3 = CounterY>=200 && CounterY<=280 && CounterX>=360 && CounterX<=420;
	wire box4 = CounterY>=200 && CounterY<=280 && CounterX>=480 && CounterX<=540;
	wire boxes = box1 | box2 | box3 | box4;
	
	wire tone1 = CounterY>=230 && CounterY<=250 && CounterX>=tone1XStart && CounterX<=tone1XEnd;
	wire tone2 = CounterY>=230 && CounterY<=250 && CounterX>=tone2XStart && CounterX<=tone2XEnd;
	wire tone3 = CounterY>=230 && CounterY<=250 && CounterX>=tone3XStart && CounterX<=tone3XEnd;
	wire tone4 = CounterY>=230 && CounterY<=250 && CounterX>=tone4XStart && CounterX<=tone4XEnd;
	
	wire G = tones;
	wire B = boxes;
	wire R = tones;
	
	always @(posedge clk)
	begin
		vga_g <= G & inDisplayArea;
		vga_b <= B & inDisplayArea;
		vga_r <= R & inDisplayArea;
	end
	
	/////////////////////////////////////////////////////////////////
	//////////////  	  VGA control ends here 	 ///////////////////
	/////////////////////////////////////////////////////////////////
	
endmodule
