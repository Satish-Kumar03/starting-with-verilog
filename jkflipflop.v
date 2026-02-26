module JKflipflop (
    input j,k,clk, output reg q,qbar
);

    always @(posedge clk) begin
        q <= ((~j)&q) | (k&qbar);
        qbar <= ~q;
    end
    
endmodule