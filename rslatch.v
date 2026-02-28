module rsflipflop  (
    input d,clk,rst, output reg q, output qbar
);
   assign qbar = ~q;

    always @(posedge clk or posedge rst)
        begin
            if(rst) q<=1'b0;
            else begin 
                q<=d;
            end
        end
        
endmodule
