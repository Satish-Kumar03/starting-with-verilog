// module rslatchtest;
//    reg d,clk; wire q,qbar;
//    rsflipflop DUT(d,clk,q,qbar);

//    initial begin
//     $monitor($time, "d=%b, clk=%b, q=%b, qbar=%b",d,clk,q,qbar);

//     #5 clk=1'b1;
//     #5 clk=1'b0;d=1'b0;
//     #5 d=1'b1;
//     #5 clk=1'b1;d=1'b0; 
//     #10 d=1'b1;
//     #5 $finish;
//    end
//    endmodule

module dflip_tb;
    reg d, clk, rst;
    wire q;

    // Instantiate the wrapper
    dflip DUT(
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        d = 0;
        rst = 1;
        
        $monitor("Time=%0t | rst=%b | clk=%b | d=%b | q=%b ", 
                 $time, rst, clk, d, q);

        // Release Reset
        #12 rst = 0;

        // Test Data Transitions
        #10 d = 1;  // Set D to 1 before next posedge
        #10 d = 0;  // Set D to 0
        #10 d = 1;
        
        // Test Reset during operation
        #5 rst = 1;
        #10 rst = 0;

        #20 $finish;
    end
endmodule