module testbench;
   reg a,b,cin;
   wire sum, cout;
   full_adder DUT(sum, cout, a,b,cin);

   initial begin
    $monitor($time , "a=%b, b=%b, c=%b , sum=%b, carry=%b", a,b,cin,sum,cout);
       #5  a=0;b=0;cin=0;
       #5  a=1;b=0;cin=0;
       #5  a=1;cin=1;
       #5  b=1;
       #5  $finish;
   end
endmodule   