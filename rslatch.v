module rsflipflop  (
    input d,clk, output reg q,qbar
);
   //assign qbar = ~q;

   always @(posedge clk)
        begin
          q = d;
          qbar = ~d;
        end
        
endmodule