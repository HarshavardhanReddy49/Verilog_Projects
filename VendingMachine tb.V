// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst,coin;
  wire dispense;
  vending_machine dut(clk,rst,coin,dispense);
   initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    clk=0;
    rst=1;
    coin=0;
    
    
    #10 rst=0;
    #10 coin=1;
    #10 coin=1;
    #60 $finish;
  end
  initial begin
    $monitor("clk=%b,rst=%b,coin=%b,dispense=%b",clk,rst,coin,dispense);
  end
endmodule