`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 09:46:27 PM
// Design Name: 
// Module Name: csa_2
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


module csa_2(s,a,b);
  input [1:0]a,b;
  output [3:0]s;
  wire [4:1]w;
  h_a h100(s[0],w[1],a[0],b[0]);
  h_a h101(w[2],w[3],a[1],b[1]);
  h_a h102(s[1],w[4],w[1],w[2]);
  h_a H103(s[2],s[3],w[3],w[4]);
endmodule 
