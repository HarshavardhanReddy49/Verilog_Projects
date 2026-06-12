`timescale 1ns/1ps

module up_down_counter_tb;

reg clk;
reg rst;
reg mode;
wire [3:0] count;

up_down_counter dut (
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .count(count)
);


always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    mode = 1;   

    #10 rst = 0;
    #50;    
    mode = 0;
    #50;
    rst = 1;
    #10 rst = 0;

    #30 $finish;
end
initial begin
    $monitor("Time=%0t rst=%b mode=%b count=%d",
              $time, rst, mode, count);
end

endmodule