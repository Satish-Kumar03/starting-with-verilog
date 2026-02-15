module mux16(in, sel,out);
    input [15:0] in;
    input [3:0] sel;
    output out;
    wire [3:0] t;


    //assign out = in[sel];
    mux4 m1(in[15:12], sel[1:0],t[3]);
    mux4 m2(in[11:8], sel[1:0], t[2]);
    mux4 m3(in[7:4], sel[1:0], t[1]);
    mux4 m4(in[3:0], sel[1:0], t[0]);
    mux4 m5(t, sel[3:2],out);  
endmodule    

module mux4(in, sel,out);
    input [3:0] in;
    input [1:0] sel;
    output out;
    wire [1:0] m;
    
    //assign out = in[sel];
    mux2 m6(in[3:2], sel[0], m[1]);
    mux2 m7(in[1:0], sel[0], m[0]);
    mux2 m8(m, sel[1], out);
    
endmodule  

module mux2(in, sel,out);
    input [1:0] in;
    input sel;
    output out;
    wire t1,t2;

    and g1(t1,in[0],~sel),
        g2(t2,in[1],sel);
    or g3(out,t1,t2);    

endmodule 


