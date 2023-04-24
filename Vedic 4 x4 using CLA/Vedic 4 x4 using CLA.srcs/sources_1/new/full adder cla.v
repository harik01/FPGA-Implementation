`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 10:03:57 PM
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


module fulladd(sf,cf,xf,yf,zf);
  output sf,cf;
  input xf,yf,zf;
  wire w1f,w2f,w3f;
  h_a h13(w1f,w2f,xf,yf);
  h_a h23(sf,w3f,w1f,zf);
  or h3(cf,w2f,w3f);
endmodule
