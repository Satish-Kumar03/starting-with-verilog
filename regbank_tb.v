module regbank_test;

    reg clk, wr;
    reg [9:0] sr1, sr2, dr;
    reg [7:0] data_in;
    wire [7:0] data_out1, data_out2;
    integer k;
    regbank DUT(data_out1, data_out2, data_in, sr1, sr2, dr,clk,wr);

    initial begin
        clk=0;
    end
    
    always #5 clk = ~ clk;

    initial begin
        #1 wr=0;
    end

    initial begin
        #7 for(k=0; k<1024; k= k+1) begin
            dr=k; data_in = 10*k; wr=1;
            #10 wr=0;
        end

        for(k=0; k<1024; k= k+2) begin
            sr1=k; sr2=k+1;
            $display("reg[%2d] = %d, reg[%2d] = %d", sr1, data_out1, sr2, data_out2);
        end
        #5000 $finish;
    end
endmodule 
