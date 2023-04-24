`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2022 02:03:10 PM
// Design Name: 
// Module Name: vedic_4
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


module vedic_4(s, a, b);
  output [8:0]s;
  input [3:0]a,b;
  wire [22:1]W;
  vedic_2 V1({W[2], W[1], s[1], s[0]}, {a[1], a[0]}, {b[1], b[0]});
  vedic_2 V2({W[6], W[5], W[4], W[3]}, {a[1], a[0]}, {b[3], b[2]});
  vedic_2 V3({W[10], W[9], W[8], W[7]}, {a[3], a[2]}, {b[1], b[0]});
  vedic_2 V4({W[14], W[13], W[12], W[11]}, {a[3], a[2]}, {b[3], b[2]});
  add_4 A1({W[15],W[20:17]},W[6:3],W[10:7],0);
  add_4 A2({W[16],s[5:2]},W[20:17],{W[12:11],W[2:1]},0);
  half_adder h3(W[21], W[22], W[15], W[16]);
  add_2 A3(s[6], s[7], s[8], W[13] ,W[14], W[21], W[22]);
endmodule
