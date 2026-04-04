module regbank(data_in, addr, clk, clr, wr);     // this is just to write the data 
  parameter reg_size=8, bank_size=1024, add_size=10;
  //output reg [reg_size-1:0] data_out;
  input [reg_size-1:0] data_in;
  input reg [add_size-1:0] addr;
  input clk, clr;
  reg [reg_size-1:0] regist[bank_size-1:0];
  int k;

  always @(posedge clk or clr)
    begin 
      if(clr == 1) begin
        for(k=0; k<bank_size-1; k= k+1)
          regist[k] <= 0;
      end
      else if(wr) begin 
        regist[addr] <= data_in;
      end
      else regist[addr] = z;
    end 
endmodule

  
