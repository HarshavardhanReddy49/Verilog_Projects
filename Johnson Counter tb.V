
module tb;
  reg clk,rst;
  wire [3:0] q;
  johnson_counter dut(clk,rst,q);
  always #5 clk=~clk;
  initial begin
    clk=0;rst=1;
    #10 rst=0;
    #50;
    #10 $finish;
  end
  initial begin
    $monitor("time=%0t,q=%b",$time,q);
  end
endmodule