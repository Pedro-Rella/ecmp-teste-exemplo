`timescale 1ns / 1ps
`include "iob_lib.vh"

module circuit
  (
   `INPUT(rst,1),
   `INPUT(clk,1),
   `INPUT(en,1),
   `OUTPUT(y,64)
   );

   `SIGNAL(x1, 64)
   `SIGNAL(res,64)

   `REG_ARE(clk, rst, 1'b0, en, x1, res)    
   `ACC_ARE(clk, rst, 1'b1, en, res, x1)
   `SIGNAL2OUT(y, x1)
   
   
endmodule
