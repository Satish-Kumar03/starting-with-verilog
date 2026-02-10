module compare(y,a,b);
    input [3:0] a,b;
    //reg [3:0] a,b;
    output reg [3:0] y;
    wire t1,t2,t3,t4;

    assign t1 = ~(a[3]^b[3]);
    assign t2 = ~(a[2]^b[2]);
    assign t3 = ~(a[1]^b[1]);
    assign t4 = ~(a[0]^b[0]);

    always @(*) begin
        if(t1&t2&t3&t4)
            y = 4'b0001;  // a equals b
        else if((a[3])&(~b[3]) | t1&(a[2])&(~b[2]) | t1&t2&(a[1])&(~b[1]) | t1&t2&t3&(a[0])&(~b[0]))
            y = a;        // a is bigger
        else
            y = b;        // b is bigger
    end
    
endmodule