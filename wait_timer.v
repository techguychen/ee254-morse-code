// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module wait_timer (Start, Clk, Reset, T, Timeout, Tclear, I);

//Timeout is the physical time (i.e. XXX ms as determined by calibration)
//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, Tclear;
input [31:0] Timeout; //if we use a Counter, this corresponds to 100MHz/2^30 => 10s
output T;
output reg [31:0] I;

reg T; //active high to indicate system timed out
reg state;

localparam //one-hot
INITIAL = 0,
WAIT = 1;


always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
            state <= INITIAL;
       end
    else if (Start)
       begin
         //(* full_case, parallel_case *)
         case (state)
            INITIAL : 
              begin
			  //initialize
			  I <= 0;
			  T <= 1'b0;
			  //state transition
					if (Tclear == 0)
					state <= WAIT;
					end
			WAIT :
			begin
			  //state transitions
			  if (I == Timeout || Tclear == 1)
				state <= INITIAL;			  
			  //DPU
			  if (I == Timeout)
				T <= 1'b1;
			  else begin
				T <= 1'b0;
				I <= I + 1;
				end
			end
			
      endcase
    end 
  end


endmodule  // letter_sm

