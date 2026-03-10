module mealytest;
  reg clk,clr,x;
  wire z;
  fsm MEALY(.clk(clk), .clr(clr), .z(z), .x(x));

  initial begin 
    clk = 1'b0;
    clr = 1'b1;
    #15 clr = 1'b0;
  end 

  always #5 clk = ~clk;

  initial begin
    $monitor("t=%d, x=%b, z=%b", $time, x, z);
    #12 x=1'b0; #10 x=1'b1;  #10 x=1'b0; #10 x=1'b0; #10 x=1'b1; 
    #10 x=1'b0; #10 x=1'b0; #10 x=1'b1; #10 x=1'b1; #10 x=1'b1; 
    #10 x=1'b0; #10 x=1'b0; #10 x=1'b1; #10 x=1'b0; #10 x=1'b1; 
    #10 $finish;
  end
endmodule 
