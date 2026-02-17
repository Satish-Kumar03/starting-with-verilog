module full_adder(sum,cout,a,b,cin);
    input a,b,cin;
    //wire t1;
    output sum, cout;
    //assign {cout,sum} = a+b+c;
    sum s1(t1,a,b);
    sum s2(sum, t1,cin);
    carry c(cout, a,b,cin);
endmodule

module sum(y,a,b);
    input a,b;
    output y;
    assign y = a^b;
endmodule

module carry(cout, a,b,cin);
   input a,b,cin;
   output cout;

   assign cout = a & b | b & cin | cin & a;

endmodule   
