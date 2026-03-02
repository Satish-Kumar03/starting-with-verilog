module gen #(parameter N=16)(input [N-1:0] x,y, output [N-1:0] out);
  genvar i;

  generate for(i=0; i<=N-1;i=i+1)
    begin xorli
      xor xg(out[i],x[i],y[i]);
    end
  endgenerate

endmodule
    
