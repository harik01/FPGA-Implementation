`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2022 02:33:33 PM
// Design Name: 
// Module Name: add_4
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


module add_4(s, a,b,cin);
 input [3:0]a,b; 
 input cin;
 output [4:0]s;
 
 wire c0,c1,c2;

 fulladd r1(s[0],c0,a[0],b[0],cin);
 fulladd r2(s[1],c1,a[1],b[1],c0);
 fulladd r3(s[2],c2,a[2],b[2],c1);
 fulladd r4(s[3],s[4],a[3],b[3],c2);
endmodule

