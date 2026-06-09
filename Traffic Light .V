module trafficlight(
  input clk,
  input rst,
  output reg[2:0] light
);
  parameter Red=3'b100,
            Yellow=3'b010,
           Green=3'b001;
  reg [2:0] state,nextstate;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        state<=Red;
      else
        state<=nextstate;
    end
  always@(*) begin
    case(state)
      Red: nextstate=Green;
      Yellow: nextstate=Red;
      Green: nextstate=Yellow;
      default: nextstate=Red;
    endcase
  end
  always@(*) begin
    case(state)
      Red:light=3'b100;
      Yellow:light=3'b010;
      Green:light=3'b001;
      default:light=3'b100;
    endcase
  end
endmodule
      
      
  