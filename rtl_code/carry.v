`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 18:20:18
// Design Name: 
// Module Name: carry
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


module carry(p, g, c_in, c_out);
input p, g, c_in; 
output reg c_out; 

always @(*) begin
    c_out = (p & c_in) | g; 
end
endmodule
