`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 09:58:51 PM
// Design Name: 
// Module Name: cla_4
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


module cla_4(s,a,b,c);
  output [4:0]s;
  input [3:0]a,b;
  input c;
  wire [11:1]w;
  
  h_a h1(w[1],w[2],a[0],b[0]);
  h_a h2(w[3],w[4],a[1],b[1]);
  h_a h3(w[5],w[6],a[2],b[2]);
  h_a h4(w[7],w[8],a[3],b[3]);
  assign s[0]=c^w[1];
  assign w[9]=w[2]|(w[1]&c);
  assign s[1]=w[3]^w[9];
  assign w[10]=(w[9]&w[3])|w[4];
  assign s[2]=w[10]^w[5];
  assign w[11]=(w[10]&w[5])|w[6];
  assign s[3]=w[11]^w[7];
  assign s[4]=(w[11]&w[7])|w[8];
endmodule
