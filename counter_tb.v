module countertest;
    parameter N=8;
    reg clk, rst;
    wire [N-1:0] count;

    counter DUT(.clk(clk), .rst(rst), .count(count));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        
        $monitor($time, "clk=%b, rst=%b, count=%b", clk,rst,count);
        #5 rst=1'b1;
        #15 rst=1'b0;
        #95 $finish;
    end
    endmodule