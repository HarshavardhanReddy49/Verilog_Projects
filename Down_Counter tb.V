module tb;

reg clk,rst;
wire [3:0] count;

down_counter dut(clk,rst,count);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #100 $finish;
end

initial
$monitor("Time=%0t Count=%d",$time,count);

endmodule