module up_down_counter(
    input clk,
    input rst,
    input mode,
    output reg [3:0] count
);

always @(posedge clk)
begin
    if(rst)
        count <= 0;

    else if(mode)
        count <= count + 1;

    else
        count <= count - 1;
end

endmodule
