module ALU(x,y,z,sign,zero,carry,overflow,parity);
    input [15:0] x,y;
    output [15:0] z;
    output sign,zero,carry,parity,overflow;
    
    assign sign = z[15];       // most significant bit in signed numbers
    assign zero = ~|z;
    assign parity = ~^z;       // checks number of 1's 
    assign overflow = (x[15]&y[15]&~z[15]) | (~x[15]&~y[15]&z[15]);

    assign {carry,z} = x+y;     // concatenation operation 
endmodule
