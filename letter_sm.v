// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module letter_sm (Start, Clk, Reset, L, S, T, Tclear, qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ, letter_code);

//T timing constraint, user waits too long, goes back to INITIAL

input L, S, T; //Long (Dash), Short (Dot), T (user waited too long)
input Start, Clk, Reset;
output qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ;
output Tclear;

assign{qA, qB, qC, qD, qE, qF, qG, qH, qI, qJ, qK, qL, qM, qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ} = letter_code;

reg [25:0] state;
output reg [25:0] letter_code;
reg Tclear; //active high to reset waiting time counter
// state, one-hot
localparam
INITIAL = 26'b00000000000000000000000000,
AA = 26'b10000000000000000000000000,
BB = 26'b01000000000000000000000000,
CC = 26'b00100000000000000000000000,
DD = 26'b00010000000000000000000000,
EE = 26'b00001000000000000000000000,
FF = 26'b00000100000000000000000000,
GG = 26'b00000010000000000000000000,
HH = 26'b00000001000000000000000000,
II = 26'b00000000100000000000000000,
JJ = 26'b00000000010000000000000000,
KK = 26'b00000000001000000000000000,
LL = 26'b00000000000100000000000000,
MM = 26'b00000000000010000000000000,
NN = 26'b00000000000001000000000000,
OO = 26'b00000000000000100000000000,
PP = 26'b00000000000000010000000000,
QQ = 26'b00000000000000001000000000,
RR = 26'b00000000000000000100000000,
SS = 26'b00000000000000000010000000,
TT = 26'b00000000000000000001000000,
UU = 26'b00000000000000000000100000,
VV = 26'b00000000000000000000010000,
WW = 26'b00000000000000000000001000,
XX = 26'b00000000000000000000000100,
YY = 26'b00000000000000000000000010,
ZZ = 26'b00000000000000000000000001;


always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
            state <= INITIAL;
			letter_code <= INITIAL;
       end
    else if (Start)
       begin
         //(* full_case, parallel_case *)
         case (state)
            INITIAL : 
              begin
                  //DPU
					Tclear = 1'b1; //don't need to start "waiting" for inputs
				  // state transitions in the control unit
					if (L)begin
						state <= TT;
						Tclear <= 1'b0; //start considering T
						end
					else if (S) begin
						state <= EE;
						Tclear <= 1'b0; //start considering T
						end
              end
			AA : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= WW;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= RR;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL;
				end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			BB : 
              begin
                //end of code (nothing comes after BAD
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  CC : 
             begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  DD : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= XX;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= BB;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  EE : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= AA;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= II;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  FF : 
              begin
                //end of code (nothing comes after BAD
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  GG : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= QQ;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= ZZ;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  HH : 
             begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  II : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= UU;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= SS;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  JJ : 
             begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  KK : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= YY;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= CC;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  LL : 
              begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  MM : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= OO;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= GG;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  NN : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= KK;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= DD;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  OO : 
              begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  PP : 
              begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  QQ : 
              begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  RR : 
              begin
                if (~T)
				begin //note, L does not produce a new letter
					if (S) begin
						state <= LL;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  SS : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= VV;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= HH;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  TT : 
              begin
                if (~T)
				begin
					if (L) begin
						state <= MM;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= NN;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  UU : 
              begin
                if (~T)
				begin //L does not produce a new letter
					if (S) begin
						state <= FF;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
			  end
			  VV : 
              begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  WW : 
             begin
                if (~T)
				begin
					if (L) begin
						state <= JJ;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else if (S) begin
						state <= PP;
						Tclear <= 1'b1; //GOOD, we got an input, clear T and wait again at the next state
						end
					else
						Tclear <= 1'b0; //BAD, don't clear T yet...keep waiting for an input ........ Tclear was 1 coming into this state. Reset back to 0 to start "counting"
				end
				else
					begin
					state <= INITIAL; end
				//DPU
				if (T) begin
				letter_code <= state;
				Tclear <= 1'b1; //Past waiting time. Go back to INITIAL and reset waiting counter
				end
				end
			  XX : 
              begin
                //end of code (nothing comes after BAD
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  YY : 
             begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			  ZZ : 
             begin
                //end of code (nothing comes after)
					state <= INITIAL;
				//DPU
				letter_code <= state;
				Tclear <= 1'b1; //Go back to INITIAL and reset waiting counter
			  end
			
      endcase
    end 
  end


endmodule  // letter_sm

