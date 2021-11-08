`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 16:53:37
// Design Name: 
// Module Name: tb_adder
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


module tb_adder();

reg [15:0]a;
reg [15:0]b; 
reg c_in; 

wire c_out; 
wire [15:0]sum;

kogge_stone_adder adder(.a(a), .b(b), .c_in(c_in), .c_out(c_out), .sum(sum)); 

initial begin
    a = 16'h0000;
    b = 16'h0000;
    c_in = 1'b0; 
    
    #10; 
    a = 16'ha701;
    b = 16'h9500;
end
endmodule
