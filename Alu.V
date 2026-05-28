// Code your design here
module function_ex(op,a,b,y);
  input op,a,b;
  output reg y;
  always @(a or b or op) begin
    case(op)
      3'b000:begin
        y=do_sum(a,b);end
      3'b001:begin
        y=do_sub(a,b);end
      3'b010:begin
        y=do_mul(a,b);end
      3'b011:begin
        y=do_div(a,b);end
      3'b100:begin
        y=do_and(a,b);end
      3'b101:begin
        y=do_or(a,b);end
      3'b110:begin
        y=do_not(b);end
      3'b111:begin
        y=do_xor(a,b);end
    endcase
  end
 
  function do_sum(a,b);
    return a+b;
  endfunction
  
  function do_sub(a,b);
    return a-b;
  endfunction
  
  function do_mul(a,b);
    return a*b;
  endfunction
  
  function do_div(a,b);
    return a/b;
  endfunction
  
  function do_and(a,b);
    return a&b;
  endfunction
  
  function do_or(a,b);
    return a|b;
  endfunction
  
  function do_not(b);
    return ~b;
  endfunction
  
  function do_xor(a,b);
    return a^b;
  endfunction
  
endmodule