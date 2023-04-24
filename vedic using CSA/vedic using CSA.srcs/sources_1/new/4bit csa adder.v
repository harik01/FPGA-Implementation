`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 09:31:04 PM
// Design Name: 
// Module Name: csa_4
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


module csa_4(s,a,b);
  output [5:0]s;
  input[3:0]a,b;
  wire [10:1]w;
  h_a h1(s[0],w[1],a[0],b[0]);
  h_a h2(w[2],w[4],a[1],b[1]);
  h_a h3(w[5],w[7],a[2],b[2]);
  h_a h4(w[8],w[10],a[3],b[3]);
  h_a h5(s[1],w[3],w[1],w[2]);
  fulladd h6(s[2],w[6],w[4],w[5],w[3]);
  fulladd h7(s[3],w[9],w[7],w[8],w[6]);
  h_a h8(s[4],s[5],w[9],w[10]);
endmodule
