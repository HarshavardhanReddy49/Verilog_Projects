// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst;
  wire [2:0] light;
  
trafficlight dut (
    .clk(clk),
    .rst(rst),
    .light(light)
);
  
  initial begin
   forever  #10 clk=~clk;
  end
  initial begin
    rst=1;
    clk=0;
    
    #20 rst=0;
    #60 $finish;
  end
 initial begin
    $monitor("Time=%0t rst=%b light=%b",
              $time,rst,light);
end

endmodule 
