module ring_counter #(
    parameter N = 8
) (
    output reg [N-1:0] count, input clk,init
);
    
    always @(posedge clk ) begin
        if(init) count = 8'b10000000;
        else begin
             count <= count << 1;
             count[0] <= count[7];
             end
    end
endmodule