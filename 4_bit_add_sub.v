module bits(sum,cout,a,b,m);
    input [3:0] a,b;
    input m;
    output wire [3:0] sum;
    output cout;
    wire t1,t2,t3;

        
        full_adder s0(sum[0],t1,a[0],(b[0]^ m),m);
        //carry c1(t1,a[0],(b[0]^ m),m);
        full_adder s1(sum[1],t2,a[1],(b[1]^ m),t1);
        //carry c2(t2,a[1],(b[1]^ m),t1);
        full_adder s2(sum[2],t3,a[2],(b[2]^ m),t2);
        //carry c3(t1,a[0],(b[2]^ m),t2);
        full_adder s3(sum[3],cout,a[3],(b[3]^m),t3);
        //carry c4(cout,a[3],(b[3]^m),t3);
    

endmodule

module full_adder(sum,cout,a,b,cin);
    input a,b,cin;
    output sum, cout;
    wire t1,t2;

    sum s1(t1,a,b);
    sum s2(sum,t1,cin);
    carry c(cout,a,b,cin);

endmodule

module sum(y,a,b);
    input a,b;
    output y;

    assign y = a^b;
endmodule

module carry(y,a,b,c);
    input a,b,c;
    output y;

    assign y = a&b|b&c|a&c;
endmodule     