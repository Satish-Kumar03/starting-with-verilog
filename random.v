module random(a,b,temp,d);
    input [3:0] a,b;
    input temp;
    output [3:0] d;
    reg [3:0] t1,t2;
    
    assign d = t1 & t2;
    always @(*) begin
        t1 = 4'b0000;
        t2 = 4'b1111;
        case (temp)
           1'b0 : begin
             t1 = a^b;
            if(t1) begin
             t2 = a&b;
            end
           end
           1'b1 : begin
             t2 = a^b;
            if(!t2) begin
              t1 = a|b;
            end
           end
        endcase
    
    end
    //assign d = t1 & t2;

endmodule