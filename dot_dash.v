// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  dot_dash.v
// ------------------------------------------------------------------------
module dot_dash (Start, Clk, Reset, SCEN, MCEN, DPB, L, S);

//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, SCEN, MCEN, DPB;
output L, S;

reg L, S; //Long: Dash, Short: Dot
reg state;

localparam //coded
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
                  //DPU
					L = 1'b0;
					S = 1'b0; //reset L & S values
					if (SCEN) begin
						state <= WAIT;
					end
              end
			WAIT :
			  begin
				  //state transitions
					if (~SCEN && ~DPB) begin
						state <= INITIAL;
						S = 1'b1;
					end
				  //DPU... Increment MC as MCEN counts
					else if (MCEN) begin
						state <= INITIAL;
						L = 1'b1;
					end
			  end
      endcase
    end 
  end


endmodule  // dot_dash

