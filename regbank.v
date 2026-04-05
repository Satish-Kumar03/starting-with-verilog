module regbank(data_out1, data_out2, data_in, sr1, sr2, dr,clk,wr);     // this is just to write the data 
  parameter reg_size=8, bank_size=1024, add_size=10;
  output reg [reg_size-1:0] data_out;
  input [reg_size-1:0] data_in1, data_in2;
  input reg [add_size-1:0] sr1,sr2,dr;
  input clk, wr;
  reg [reg_size-1:0] regist[bank_size-1:0];
  //int k;

  always @(posedge clk)
    begin 
      if(wr==0) regist[dr] <= data_in;
      else if(wr == 0) begin 
        data_out1 <= regist[sr1];
        data_out2 <= regist[sr2];
      end
      else begin
        data_out1 = z;
        data_out2 = z;
      end
    end 
endmodule

  
