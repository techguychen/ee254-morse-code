// ----------------------------------------------------------------------
//  A Verilog module for a simple divider
//
//  Written by Gandhi Puvvada  Date: 7/17/98, 2/15/2008
//
//  File name:  letter_sm.v
// ------------------------------------------------------------------------
module calibration (Start, Clk, Reset, L, S, Timeout, T_count1, T_count2, T_count3, state, dot_cnt, dash_cnt);

//T timing constraint, user waits too long, goes back to INITIAL

input Start, Clk, Reset, L, S;
output reg [30:0] Timeout;
output reg [30:0] T_count1;
output reg [30:0] T_count2;
output reg [30:0] T_count3;

output reg [2:0] state;
output reg [2:0] dot_cnt;
output reg [2:0] dash_cnt;

localparam //one-hot
INITIAL = 3'b000,
DOT1 = 3'b001,
DASH1 = 3'b010,
DOT2 = 3'b011,
DASH2 = 3'b100,
CALC = 3'b101;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
            state <= INITIAL;
				   //DPU
					dot_cnt <= 0;
					dash_cnt <= 0; //reset Dot/Dash counters to 0
					T_count1 <= 0;
					T_count2 <= 0;
					T_count3 <= 0;
					Timeout <= 0;

       end
    else if (Start)
       begin
         //(* full_case, parallel_case *)
         case (state)
            INITIAL : 
              begin
				  // state transitions in the control unit
					if (S) begin
						state <= DOT1;
						dot_cnt <= dot_cnt + 1;
						end
              end
			DOT1 :
			  begin
				if (L && dot_cnt == 4) begin
					state <= DASH1;
					dot_cnt <= 0;
					dash_cnt <= 1;
				end
				else begin
					if (dot_cnt != 4) begin
						if (S) begin
						dot_cnt <= dot_cnt + 1;
						end
					end
					else
						T_count1 <= T_count1 + 1;
				end
				
			  end
			DASH1 :
			  begin
			  if (S && dash_cnt == 4) begin
					state <= DOT2;
					dash_cnt <= 0;
					dot_cnt <= 1;
			  end
				else begin
					if (dash_cnt != 4)begin
						if (L) begin
						dash_cnt <= dash_cnt + 1;
						end
					end
					else
						T_count2 <= T_count2 + 1;
				end
			  end
			DOT2 :
			  begin
			  if (L && dot_cnt == 4) begin
					state <= DASH2;
					dot_cnt <= 0;
					dash_cnt <= 1;
			  end
				else begin
					if (dot_cnt != 4) begin
						if (S)
						dot_cnt <= dot_cnt + 1;
					end
					else
						T_count3 <= T_count3 + 1;
				end
			  end
			DASH2 :
			  begin
			  if (dash_cnt == 4) begin
					state <= CALC;
					dash_cnt <= 0;
			  end
				else if (L)
						dash_cnt <= dash_cnt + 1;
			  end
			CALC :
			begin
					Timeout <= (T_count1 + T_count2 + T_count3)/3;
			end
      endcase
    end 
  end


endmodule  // calibration