module fsm(input clk,clr,x, output reg z);     // detect sequence 1001
  reg [1:0] ps, ns;
  //reg ns,ps;
  parameter s0:0; s1:1; s2:2; s3:3;

  always @(posedge clk or posedge clr)
    begin 
      if(clr) ps <= s0;
      else ps <= ns;
    end 

  always @(x,ps) begin 
    case(ps) 
      s0 : begin 
             z = x ? 0 : 0;
             ns = x ? s1 : s0;
      end
      s1 : begin 
             z = x ? 0 : 0;
             ns = x ? s1 : s2;
      end 
      s2 : begin 
             z = x ? 0 : 0;
             ns = x ?  s1 : s3;
      end
      s3: begin 
             z = x ? 1 : 0;
             ns = x ?  s1 : s0;
      end
    endcase
      end 
endmodule 
      
        
