`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2022 02:39:52 PM
// Design Name: 
// Module Name: add_2
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


module add_2(s1,s2,c1,a0,a1,b0,b1);
    output s1,s2,c1;
    input a0,a1,b0,b1;
    wire w1;
    fulladd f1(s1,w1,a0,b0,0);
    fulladd f2(s2,c1,a1,b1,w1);

endmodule
