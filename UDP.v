module full_adder #(parameter N=8)(input [N-1:0] a,b, input cin, output [N-1:0] sum, output [N:0] cout);

  genvar i;
  assign cout[0] = cin;
  
  generate for(i=0; i<N;i=i+1)
    begin : add
      my_sum SUM (sum[i],a[i],b[i],cout[0]);
      my_carry CARRY(cout[i+1],a[i],b[i],cout[i]);
    end
  endgenerate
endmodule 

primitive my_sum(sum,a,b,c);
  input a,b,c;
  output sum;
  table
    // a b c : sum
       0 0 0 : 0;
       0 0 1 : 1;
       0 1 0 : 1;
       1 0 0 : 1;
       1 0 1 : 0;
       1 1 0 : 0;
       1 1 1 : 1;
  endtable
endprimitive

primitive my_carry(cout, a,b,c);
  input a,b,c;
  output cout;
  table 
    // a b c : cout
      ? 0 0 : 0;
      0 ? 0 : 0;
      0 0 ? : 0;
      ? 1 1 : 1;
      1 ? 1 : 1;
      1 1 ? : 1;
  endtable 
endprimitive 












    
