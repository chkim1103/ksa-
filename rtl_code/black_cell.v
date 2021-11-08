`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 16:37:37
// Design Name: 
// Module Name: black_cell
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


module black_cell(pi, gi, pj, gj, po, go);
input pi, gi, pj, gj; 
output po, go; 

reg po; 
reg go; 

always @(*) begin
    po = pi & pj;
    go = (pi & gj) | gi; 
end
endmodule
