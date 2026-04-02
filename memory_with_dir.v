module bidire( data_out, data_in, clk, read, write);
  parameter data_size = 8, add_size =10, mem_size = 1024;
  input [data_size-1:0] data_in;
  output [data_size-1:0] bus;
  input clk, write, read;
  wire [data_size-1:0] d_in, d_out;
  reg [add_size-1:0] mem[mem_size-1:0];
  reg [add_size-1:0] addr;

  assign bus = read : d_out ? z;
  assign data_in = write : bus ? z;
  
