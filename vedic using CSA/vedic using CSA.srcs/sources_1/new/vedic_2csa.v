`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 10:06:44 PM
// Design Name: 
// Module Name: vedic_2csa
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


module vedic_2cla(s, a , b);
  output [3:0]s;
  
  input [1:0]a,b;
  wire w1, w2, w3, w4;
  and (s[0],a[0], b[0]);
  and (w1, b[0], a[1]);
  and (w2, a[0], b[1]);
  h_a h55(s[1], w4, w1, w2);
  and (w3, a[1], b[1]);
  h_a h66(s[2], s[3], w4, w3);
endmodule  
