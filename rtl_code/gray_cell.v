`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 16:37:51
// Design Name: 
// Module Name: gray_cell
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


module gray_cell(pi, gi, gj, go);
input pi, gi, gj; 
output go;

reg go; 

always @(*) begin
    go = (pi & gj) | gi;
end
endmodule
