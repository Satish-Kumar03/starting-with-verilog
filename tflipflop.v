module Tflipflop (
    //input t,clk, output reg q, output qbar
    input t,clk,rst, output reg q, qbar
);

    // always @(posedge clk) begin
    //     q <= (t & ~q) | (~t & q);
        
    // end
    // assign qbar = ~q;


    always @(posedge clk or posedge rst) begin  
        if(rst) begin q<=1'b0; qbar<= 1'b1; end           // this is purely sequential circuit
        else begin 
            case(t)
            1'b0: begin q<=q; qbar<=qbar; end
            //1'b1: begin q<=1'b0; qbar<=1'b1; end
            //1'b0: begin q<=1'b1; qbar<=1'b0; end
            1'b1: begin q<= ~q; qbar<= ~qbar; end
            //default : q<=; qbar<=x;
        endcase  
        end
    end
endmodule


// primitive Tflipflop(q, t,clk,rst);
//     input rst,clk,t;
//     output reg q;
//     initial q=0;
//     table 
//         // clr.    clk.     t.   :    pre.     next
//         1           ?       ?    :    ?   :   0;
//         (10)        ?       ?    :    ?   :   -;   // falling edge of rst

//         0           (01)    0     :   ?   :   -;   // hold state

//         0           (01)    1     :   0   :   1;
//         0           (01)    1     :   1   :   0;  /// toggle state 
        
//         0           (10)    ?     :   ?   :   -;  // falling edge of clk
//     endtable         

// endprimitive
