`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 09:55:47 PM
// Design Name: 
// Module Name: cla_2
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


module cla_2(s,a,b,c);
  output [2:0]s;
  input [1:0]a,b;
  input c;
  wire [7:1]w;
  
  h_a h12(w[1],w[2],a[0],b[0]);
  h_a h22(w[3],w[4],a[1],b[1]);
  assign s[0]=c^w[1];
  assign w[6]=w[2]|(w[1]&c);
  assign s[1]=w[6]^w[1];
  assign s[2]=w[4]|(w[3]&w[6]);
endmodule