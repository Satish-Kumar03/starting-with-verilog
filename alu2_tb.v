module alutest;
  parameter N = 4;
  reg [N-1:0] a,b;
  reg [2:0] sel; 
  wire [2*N-1:0] out;
  ALU2 DUT(.x(a), .y(b), .out(out),.sel(sel));

  initial begin
    $monitor($time, "a=%b, b=%b, operation=%b, out=%b", a,b,sel,out);
    #5 a=4'b0000; b=4'b0000; sel=3'b000;
    #5 a=4'b0110; b=4'b0011; sel=3'b001;
    #5 a=4'b0100; b=4'b0010; sel=3'b010;
    #5 sel=3'b011;
    #5 sel=3'b100;
    #5 a=4'b1111; sel=3'b101;
    #5 a=4'b0110; sel=3'b110;
    #5 sel=3'b11z;
    #5 $finish;
  end
  endmodule