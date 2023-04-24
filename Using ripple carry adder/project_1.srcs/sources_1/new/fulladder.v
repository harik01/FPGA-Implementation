`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2022 08:24:16 PM
// Design Name: 
// Module Name: fulladder
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

module fulladd(sf,cf,xf,yf,zf);
  output sf,cf;
  input xf,yf,zf;
  wire w1f,w2f,w3f;
  half_adder h1(w1f,w2f,xf,yf);
  half_adder h2(sf,w3f,w1f,zf);
  or h3(cf,w2f,w3f);
endmodule

