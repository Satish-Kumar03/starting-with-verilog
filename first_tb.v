module testbench;
   reg a,b,c,d,e,f; 
   wire y;
   first DUT(y,a,b,c,d,e,f);

   initial begin
    $monitor($time , "a=%b, b=%b, c=%b , d=%b, e=%b, f=%b, y=%b", a,b,c,d,e,f,y);
       #5  a=1;b=0;c=0;d=1;e=0;f=0;
       #5  a=0;b=0;c=1;d=1;e=1;f=0;
       #5  a=1;c=0;
       #5  f=1;
       #5  $finish;
   end
endmodule