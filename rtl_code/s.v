`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 18:23:59
// Design Name: 
// Module Name: s
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


module s(p, c_in, sum);
input p, c_in; 
output reg sum;

always @(*) begin
    sum = p ^ c_in; 
end
endmodule
