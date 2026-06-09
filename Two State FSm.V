module fsm_2state(
  input clk,
  input rst,
  input x,
  output reg y
);
  parameter s0=1'b0,
            s1=1'b1;
  reg state,nextstate;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        state<=s0;
      else
        state<=nextstate;
    end
  always@(*) begin
    case(state)
      s0:nextstate=x ? s1 : s0;
      s1:nextstate=x ? s0 : s1;
    endcase
  end
  always@(*) begin
    case(state)
      s0:y=1'b0;
      s1:y=1'b1;
    endcase
  end
endmodule
      
        
      