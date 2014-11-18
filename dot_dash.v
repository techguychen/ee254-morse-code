// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module dot_dash (Start, Clk, Reset, SCEN, MCEN, CCEN, L, S);

//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, SCEN, MCEN, CCEN;
output L, S;

reg L, S //Long: Dash, Short: Dot

localparam //one-hot



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
                  //DPU
					Tclear <= 1'b1; //don't need to start "waiting" for inputs
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
			
      endcase
    end 
  end


endmodule  // letter_sm

