`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2022 09:01:45 PM
// Design Name: 
// Module Name: at_one
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module half_adder(s,c,a,b);
  output s,c;
  input a,b;
  xor s1(s,a,b);
  and c1(c,a,b);
endmodule
