// Code your design here
module vending_machine(
  input clk,
  input rst,
  input coin,
  output reg dispense
);
  reg [1:0] state,nextstate;
  parameter s0=2'b00,
            s5=2'b01,
            s10=2'b10;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        state<=s0;
      else
        state<=nextstate;
    end
  always@(*) 
    begin
      case(state)
        s0:nextstate=coin ? s5:s0;
        s5:nextstate=coin ? s10:s5;
        s10:nextstate= s0;
        default:nextstate=s0;
      endcase
    end
  always@(*) begin
    
      dispense=(state==s10);
    end
 
endmodule
   
       