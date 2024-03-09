`timescale 1ns / 1ps
module tb_booths_multi();
  wire [7:0] Y;
  reg [3:0] A, B;
  
  Booth_Multiplier dut(Y, A, B);
  
  initial
  begin

    $display("RSLT\tA x B = Y");           
    A = 2; B = 2; #10;                    
//    if ( Y == 4 )                       
//      $display("PASS\t%p x %p = %p",A,B,Y);  
//    else
//      $display("FAIL\t%p x %p = %p",A,B,Y);
    
    
    A = 3; B = 4; #10;
//    if ( Y == 12 )
//      $display("PASS\t%p x %p = %p",A,B,Y);
//    else
//      $display("FAIL\t%p x %p = %p",A,B,Y);
    
    A = 3; B = -4; #10;
//    if ( Y == -12 )
//      $display("PASS\t%p x %p = %p",A,B,Y);
//    else
//      $display("FAIL\t%p x %p = %p",A,B,Y);
    
    
    A = 0; B = 0; #10;
//    if ( Y == 0 )
//      $display("PASS\t%p x %p = %p",A,B,Y);
//    else
//      $display("FAIL\t%p x %p = %p",A,B,Y);
    
    
    A = 15; B = 15; #10;
//    if ( Y == 225 )
//      $display("PASS\t%p x %p = %p",A,B,Y);
//    else
//      $display("FAIL\t%p x %p = %p",A,B,Y);
    
  end
  
endmodule 