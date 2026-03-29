module mem1 (
  data_out,data_in, wr, clk,cs                       // Making of RAM (read and write functionality.
);
    parameter data_size = 8, add_size =10, mem_size = 1024;
    input [data_size-1:0] data;
    input wr,clk,cs;                                // cs is basically chip select
    output [data_size-1:0] data_out;
    reg [data_size-1:0] data;
    reg [data_size-1:0] mem[0:mem_size-1];
    reg [add_size-1:0] addr;

    assign data_out = (cs && wr) : data ? 8'bz;
    always @(posedge clk) begin
      if(cs && wr) mem[addr] <= data_in;             // !wr is reading.
        else if(cs && !wr) data <= mem[addr];
    end
endmodule
