module testgen;
  reg[15:0] a,b;
  wire [15:0] y;
  gen DUT(.x(a), .y(b), .out(y));

  initial begin
    $monitor($time, "x=%b, y=%b, out=%b", a,b,y);
    #5 a=16'haaaa; b=16'hf0f0;
    #5 a=16'h0010; b=16'heeaa;
    #5 $finish;

    end
endmodule
             
             
    
