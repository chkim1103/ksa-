`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 16:37:24
// Design Name: 
// Module Name: kogge_stone_adder
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


module kogge_stone_adder(a, b, c_in, c_out, sum);
input [15:0]a;
input [15:0]b; 
input c_in; 

output c_out; 
output [15:0]sum; 

wire [15:0]p;
wire [15:0]g;
//pg logic
pg_logic pg(.a(a), .b(b), .p(p), .g(g));
//stage 1
wire [13:0]stage1_p;
wire [14:0]stage1_g;     
gray_cell g1_stage1(.pi(p[1]), .gi(g[1]), .gj(g[0]), .go(stage1_g[0]));
black_cell b2_stage1(.pi(p[2]), .gi(g[2]), .pj(p[1]), .gj(g[1]), .po(stage1_p[0]), .go(stage1_g[1]));
black_cell b3_stage1(.pi(p[3]), .gi(g[3]), .pj(p[2]), .gj(g[2]), .po(stage1_p[1]), .go(stage1_g[2]));
black_cell b4_stage1(.pi(p[4]), .gi(g[4]), .pj(p[3]), .gj(g[3]), .po(stage1_p[2]), .go(stage1_g[3]));
black_cell b5_stage1(.pi(p[5]), .gi(g[5]), .pj(p[4]), .gj(g[4]), .po(stage1_p[3]), .go(stage1_g[4]));
black_cell b6_stage1(.pi(p[6]), .gi(g[6]), .pj(p[5]), .gj(g[5]), .po(stage1_p[4]), .go(stage1_g[5]));
black_cell b7_stage1(.pi(p[7]), .gi(g[7]), .pj(p[6]), .gj(g[6]), .po(stage1_p[5]), .go(stage1_g[6]));
black_cell b8_stage1(.pi(p[8]), .gi(g[8]), .pj(p[7]), .gj(g[7]), .po(stage1_p[6]), .go(stage1_g[7]));
black_cell b9_stage1(.pi(p[9]), .gi(g[9]), .pj(p[8]), .gj(g[8]), .po(stage1_p[7]), .go(stage1_g[8]));
black_cell b10_stage1(.pi(p[10]), .gi(g[10]), .pj(p[9]), .gj(g[9]), .po(stage1_p[8]), .go(stage1_g[9]));
black_cell b11_stage1(.pi(p[11]), .gi(g[11]), .pj(p[10]), .gj(g[10]), .po(stage1_p[9]), .go(stage1_g[10]));
black_cell b12_stage1(.pi(p[12]), .gi(g[12]), .pj(p[11]), .gj(g[11]), .po(stage1_p[10]), .go(stage1_g[11]));
black_cell b13_stage1(.pi(p[13]), .gi(g[13]), .pj(p[12]), .gj(g[12]), .po(stage1_p[11]), .go(stage1_g[12]));
black_cell b14_stage1(.pi(p[14]), .gi(g[14]), .pj(p[13]), .gj(g[13]), .po(stage1_p[12]), .go(stage1_g[13]));
black_cell b15_stage1(.pi(p[15]), .gi(g[15]), .pj(p[14]), .gj(g[14]), .po(stage1_p[13]), .go(stage1_g[14])); 
//stage 2 wire
wire [11:0]stage2_p; 
wire [13:0]stage2_g;
//stage 2 
gray_cell g2_stage2(.pi(stage1_p[0]), .gi(stage1_g[1]), .gj(g[0]), .go(stage2_g[0]));
gray_cell g3_stage2(.pi(stage1_p[1]), .gi(stage1_g[2]), .gj(stage1_g[1]), .go(stage2_g[1]));
black_cell b4_stage2(.pi(stage1_p[2]), .gi(stage1_g[3]), .pj(stage1_p[1]), .gj(stage1_g[2]), .po(stage2_p[0]), .go(stage2_g[2]));  
black_cell b5_stage2(.pi(stage1_p[3]), .gi(stage1_g[4]), .pj(stage1_p[2]), .gj(stage1_g[3]), .po(stage2_p[1]), .go(stage2_g[3]));
black_cell b6_stage2(.pi(stage1_p[4]), .gi(stage1_g[5]), .pj(stage1_p[3]), .gj(stage1_g[4]), .po(stage2_p[2]), .go(stage2_g[4]));
black_cell b7_stage2(.pi(stage1_p[5]), .gi(stage1_g[6]), .pj(stage1_p[4]), .gj(stage1_g[5]), .po(stage2_p[3]), .go(stage2_g[5]));
black_cell b8_stage2(.pi(stage1_p[6]), .gi(stage1_g[7]), .pj(stage1_p[5]), .gj(stage1_g[6]), .po(stage2_p[4]), .go(stage2_g[6]));
black_cell b9_stage2(.pi(stage1_p[7]), .gi(stage1_g[8]), .pj(stage1_p[6]), .gj(stage1_g[7]), .po(stage2_p[5]), .go(stage2_g[7]));
black_cell b10_stage2(.pi(stage1_p[8]), .gi(stage1_g[9]), .pj(stage1_p[7]), .gj(stage1_g[8]), .po(stage2_p[6]), .go(stage2_g[8]));
black_cell b11_stage2(.pi(stage1_p[9]), .gi(stage1_g[10]), .pj(stage1_p[8]), .gj(stage1_g[9]), .po(stage2_p[7]), .go(stage2_g[9]));
black_cell b12_stage2(.pi(stage1_p[10]), .gi(stage1_g[11]), .pj(stage1_p[9]), .gj(stage1_g[10]), .po(stage2_p[8]), .go(stage2_g[10]));
black_cell b13_stage2(.pi(stage1_p[11]), .gi(stage1_g[12]), .pj(stage1_p[10]), .gj(stage1_g[11]), .po(stage2_p[9]), .go(stage2_g[11]));
black_cell b14_stage2(.pi(stage1_p[12]), .gi(stage1_g[13]), .pj(stage1_p[11]), .gj(stage1_g[12]), .po(stage2_p[10]), .go(stage2_g[12]));
black_cell b15_stage2(.pi(stage1_p[13]), .gi(stage1_g[14]), .pj(stage1_p[12]), .gj(stage1_g[13]), .po(stage2_p[11]), .go(stage2_g[13]));
//stage 3 wire
wire [7:0]stage3_p; 
wire [11:0]stage3_g; 
//stage 3 
gray_cell g4_stage3(.pi(stage2_p[0]), .gi(stage2_g[2]), .gj(g[0]), .go(stage3_g[0]));
gray_cell g5_stage3(.pi(stage2_p[1]), .gi(stage2_g[3]), .gj(stage1_g[0]), .go(stage3_g[1]));
gray_cell g6_stage3(.pi(stage2_p[2]), .gi(stage2_g[4]), .gj(stage2_g[0]), .go(stage3_g[2]));
gray_cell g7_stage3(.pi(stage2_p[3]), .gi(stage2_g[5]), .gj(stage2_g[1]), .go(stage3_g[3]));
black_cell b8_stage3(.pi(stage2_p[4]), .gi(stage2_g[6]), .pj(stage2_p[0]), .gj(stage2_g[2]), .po(stage3_p[0]), .go(stage3_g[4]));
black_cell b9_stage3(.pi(stage2_p[5]), .gi(stage2_g[7]), .pj(stage2_p[1]), .gj(stage2_g[3]), .po(stage3_p[1]), .go(stage3_g[5]));
black_cell b10_stage3(.pi(stage2_p[6]), .gi(stage2_g[8]), .pj(stage2_p[2]), .gj(stage2_g[4]), .po(stage3_p[2]), .go(stage3_g[6]));
black_cell b11_stage3(.pi(stage2_p[7]), .gi(stage2_g[9]), .pj(stage2_p[3]), .gj(stage2_g[5]), .po(stage3_p[3]), .go(stage3_g[7]));
black_cell b12_stage3(.pi(stage2_p[8]), .gi(stage2_g[10]), .pj(stage2_p[4]), .gj(stage2_g[6]), .po(stage3_p[4]), .go(stage3_g[8]));
black_cell b13_stage3(.pi(stage2_p[9]), .gi(stage2_g[11]), .pj(stage2_p[5]), .gj(stage2_g[7]), .po(stage3_p[5]), .go(stage3_g[9]));
black_cell b14_stage3(.pi(stage2_p[10]), .gi(stage2_g[12]), .pj(stage2_p[6]), .gj(stage2_g[8]), .po(stage3_p[6]), .go(stage3_g[10]));
black_cell b15_stage3(.pi(stage2_p[11]), .gi(stage2_g[13]), .pj(stage2_p[7]), .gj(stage2_g[9]), .po(stage3_p[7]), .go(stage3_g[11])); 
//stage 4 wire
wire [7:0]stage4_g;
//stage 4 
gray_cell g8_stage4(.pi(stage3_p[0]), .gi(stage3_g[4]), .gj(g[0]), .go(stage4_g[0]));
gray_cell g9_stage4(.pi(stage3_p[1]), .gi(stage3_g[5]), .gj(stage1_g[0]), .go(stage4_g[1]));
gray_cell g10_stage4(.pi(stage3_p[2]), .gi(stage3_g[6]), .gj(stage2_g[0]), .go(stage4_g[2]));
gray_cell g11_stage4(.pi(stage3_p[3]), .gi(stage3_g[7]), .gj(stage2_g[1]), .go(stage4_g[3]));
gray_cell g12_stage4(.pi(stage3_p[4]), .gi(stage3_g[8]), .gj(stage3_g[0]), .go(stage4_g[4]));
gray_cell g13_stage4(.pi(stage3_p[5]), .gi(stage3_g[9]), .gj(stage3_g[1]), .go(stage4_g[5]));
gray_cell g14_stage4(.pi(stage3_p[6]), .gi(stage3_g[10]), .gj(stage3_g[2]), .go(stage4_g[6]));
gray_cell g15_stage4(.pi(stage3_p[7]), .gi(stage3_g[11]), .gj(stage3_g[3]), .go(stage4_g[7]));
//sum 
s s0(.p(p[0]), .c_in(c_in), .sum(sum[0]));
s s1(.p(p[1]), .c_in(g[0]), .sum(sum[1]));
s s2(.p(p[2]), .c_in(stage1_g[0]), .sum(sum[2]));
s s3(.p(p[3]), .c_in(stage2_g[0]), .sum(sum[3]));
s s4(.p(p[4]), .c_in(stage2_g[1]), .sum(sum[4]));
s s5(.p(p[5]), .c_in(stage3_g[0]), .sum(sum[5]));
s s6(.p(p[6]), .c_in(stage3_g[1]), .sum(sum[6]));
s s7(.p(p[7]), .c_in(stage3_g[2]), .sum(sum[7]));
s s8(.p(p[8]), .c_in(stage3_g[3]), .sum(sum[8]));
s s9(.p(p[9]), .c_in(stage4_g[0]), .sum(sum[9]));
s s10(.p(p[10]), .c_in(stage4_g[1]), .sum(sum[10]));
s s11(.p(p[11]), .c_in(stage4_g[2]), .sum(sum[11]));
s s12(.p(p[12]), .c_in(stage4_g[3]), .sum(sum[12]));
s s13(.p(p[13]), .c_in(stage4_g[4]), .sum(sum[13]));
s s14(.p(p[14]), .c_in(stage4_g[5]), .sum(sum[14]));
s s15 (.p(p[15]), .c_in(stage4_g[6]), .sum(sum[15]));
//carry out 
carry c(.p(p[15]), .g(g[15]), .c_in(stage4_g[7]), .c_out(c_out));
endmodule
