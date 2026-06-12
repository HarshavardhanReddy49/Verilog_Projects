module tb;
  reg clk,rst;
  wire[3:0]q;
  
  Ringcounter dut(clk,rst,q);
  initial begin
    forever  #5 clk=~clk;
  end
  initial begin
    rst=1;clk=0;
    #10 rst=0;
    #50 $finish;
  end
  initial begin
    $monitor("Time=%0t,q=%b",$time,q);
  end
endmodule
             