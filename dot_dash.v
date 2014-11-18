// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module dot_dash (Start, Clk, Reset, SCEN, MCEN, DPB, L, S);

//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, SCEN, MCEN, DPB;
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
					L = 1'b0;
					S = 1'b0; //reset L & S values
					MC = 1'b0; //reset MCEN count
				  // state transitions in the control unit
					if (SCEN)
						state <= WAIT;
						MC <= MC + 1;
              end
			WAIT :
			  begin
				  //state transitions
					if (~SCEN && ~DPB)
						state <= DOT;
					else if (MC == 2 && DPB == 1)
						state <= DASH;
				  //DPU... Increment MC as MCEN counts
					else if (MCEN == 1)
						MC <= MC + 1;
			  end
			DOT :
			  begin
				  //DPU
				  S = 1'b1;
				  //state transitions
				  state <= INITIAL;
			  end
			DASH :
			  begin
				  //DPU
				  L = 1'b1;
				  //state transitions
				  state <= INITIAL;
			  end
      endcase
    end 
  end


endmodule  // letter_sm

