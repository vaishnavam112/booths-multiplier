`timescale 1ns / 1ps
module booths_multi(product, A, B);
  input signed [3:0] A, B;
  output reg signed [7:0] product;

  reg [1:0] temp;
  integer i;
  reg e;
  reg [3:0] B1;

  always @(A,B)
  begin
    product = 8'd0;
    e = 1'b0;
    B1 = -B;
    
    for (i=0; i<4; i=i+1)
    begin
      temp = { A[i], e };
      case(temp)
        2'd2 : product[7:4] = product[7:4] + B1;
        2'd1 : product[7:4] = product[7:4] + B;
      endcase
      product = product >> 1;
      product[7] = product[6];
      e=A[i];
      
    end
  end
  
endmodule