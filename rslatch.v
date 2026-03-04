module rsflipflop  (
    input d,clk,rst, output reg q, output qbar
);
   assign qbar = ~q;

    always @(posedge clk or posedge rst)
        begin
            if(rst) q<=1'b0;
            else begin 
                q<=d;
            end
        end
        
endmodule


// primitive dflip(q,rst,clk,d);
//     input rst,clk,d;
//     output reg q;
    
//     initial q=0;
//     table 
//         // rst  clk   d : curr_state : next_state  // mind the sequence of input declared on primitive 
//             1    ?    ? : ? : 0;
//           (10)   ?    ? : ? : -;
//             0   (01)  0 : ? : 0;
//             0   (01)  1 : ? : 1;
//             0   (10)  ? : ? : -;
//     endtable 
// endprimitive 
