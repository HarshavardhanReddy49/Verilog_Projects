// Code your testbench here
// or browse Examples
module tb;
wire y;
reg a,b,op;
function_ex dut(op,a,b,c);
initial
begin
  $monitor("a=%b,b=%b,c=%b,op=%b",a,b,c,op);
	op=0;a=0;b=0;
     #5 op=0;a=1;b=1;
     #5 op=0;a=0;b=1;
     #5 op=1;a=1;b=1;
     #5 op=1;a=0;b=0;
     #5 op=1;a=0;b=1;
     #5 $finish;
end
endmodule