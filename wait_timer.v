// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module wait_timer (Start, Clk, Reset, T, Timeout, Tclear);

//Timeout is the physical time (i.e. XXX ms as determined by calibration)
//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, Tclear;
input [:0] Timeout;
output T;

reg T; //active high to indicate system timed out
reg state;

localparam //one-hot
INITIAL = 1'b0,
WAIT = 1'b1;


always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
            state       <= INITIAL;
       end
    else if (Start)
       begin
         (* full_case, parallel_case *)
         case (state)
            INITIAL : 
              begin
			  //initialize
			  I = 1'bXXXX;
			  T = 1'b0;
			  //state transition
                  if (Tclear == 1'b0)
					state <= WAIT;
              end
			WAIT :
			begin
			  //state transitions
			  if (I == Timeout || Tclear == 1)
				state <= INITIAL;			  
			  //DPU
			  if (I == Timeout)
				T = 1'b1;
			  else
				T = 1'b0;
			end
			
      endcase
    end 
  end


endmodule  // letter_sm

