module updtest;
  wire [7:0] sum; wire [8:0] cout;
  reg [7:0] a,b;
  reg cin ;
  full_adder DUT(a,b,cin,sum,cout);

  initial begin
    $monitor($time, "a=%b, b=%b, c=%b, sum = %b, cout=%b",a,b,cin,sum,cout[8]);
    #5 a=8'h00; b=8'h01; cin=1'b0;
    #5 a=8'ha0; b=8'hf0;
    #5 cin=1'b1;
    #5 a=8'hff; b=8'b00; cin=1'b0;
    #5 cin = 1'b1;
    #5 $finish;
  end
endmodule
  
