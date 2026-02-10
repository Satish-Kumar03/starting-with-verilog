module first (
    y,a,b,c,d,e,f
);
    input a,b,c,d,e,f;
    wire t1,t2,t3;
    output y;
    
    nand g1(t1,a,b);
    nand g2(t2,c,~b,d);
    nor g3(t3,e,f);
    nand g4(y,t1,t2,t3);

endmodule