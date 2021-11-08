`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 16:37:12
// Design Name: 
// Module Name: pg_logic
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


module pg_logic(a, b, p, g);
input [15:0]a;
input [15:0]b;

output [15:0]p;
output [15:0]g;

reg [15:0]p; 
reg [15:0]g;

always @(*) begin 
    p = a ^ b; 
    g = a & b;
end
endmodule
