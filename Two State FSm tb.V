module tb;
reg clk;
reg rst;
reg x;
wire y;

fsm_2state uut (
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
);


always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    x   = 0;

    
    #10 rst = 0;

   
    #10 x = 1;   
    #10 x = 0;   
    #10 x = 1;  
    #10 x = 0;   
    #10 x = 1;  
    #10 x = 1;   

    #20 $finish;
end

initial begin
    $monitor("Time=%0t rst=%b x=%b y=%b state=%b",
              $time, rst, x, y, uut.state);
end

endmodule