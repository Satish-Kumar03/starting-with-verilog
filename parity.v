module peirity (
    input clk,x, output reg y, output reg state   // instead of using state variable as an output we can use it as a reg 
);
    
    always @(posedge clk) begin
        case (state)
          0  : state <= x ? 1 : 0;
          1  : state <= x ? 0 : 1;
            default: state <= 0;
        endcase
    end

    always @(state) begin
        case (state)
          0  :  y = 0;
          1  :  y = 1;
            default: y = 0;
        endcase
    end

endmodule
