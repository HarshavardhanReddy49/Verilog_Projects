// Code your design here
module calc;
  reg [3:0] a,b;
  reg [7:0] add,sub,mul,div;
  function [7:0] sum;
    input [3:0] x,y;
    begin
    sum=x+y;
    end
  endfunction
  function [7:0] minus;
    input [3:0] x,y;
    begin
      minus=x-y;
    end
  endfunction
  function [7:0] multi;
    input [3:0] x,y;
    begin
      multi=x*y;
    end
  endfunction
  function [7:0] divi;
    input [3:0] x,y;
    begin
      divi=x/y;
    end
  endfunction
 initial begin 
  a=10;
  b=5;
    add=sum(a,b);
     sub=minus(a,b);
     mul=multi(a,b);
     div=divi(a,b);
 end

  
  initial begin
    $monitor("a=%d b=%d add=%d sub=%d mul=%d div=%d",a,b,add,sub,mul,div);
  end
endmodule
  
    