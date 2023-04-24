`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 10:00:01 PM
// Design Name: 
// Module Name: h_a
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


module h_a(s,c,a,b);
  output s,c;
  input a,b;
  xor s1(s,a,b);
  and c1(c,a,b);
endmodule
