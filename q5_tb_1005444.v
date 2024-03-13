`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 21:44:02
// Design Name: 
// Module Name: CCTA_tb
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


module CCTA_tb();
    reg [3:0] A,B,C;
    reg rst;
    reg ctrl;
    wire [4:0]q;

//Instantiate
    CCTA CCTA_tb(
        .A(A),
        .B(B),
        .C(C),
        .rst(rst),
        .ctrl(ctrl),
        .q(q)
    );
//Initialise input
    initial begin
        A = 4'h0;B = 4'h3;C = 4'h5 ;rst = 1'b0; ctrl = 1'b0; #10;
   
//Test case when ctrl =1 
        ctrl = 1;#10;
//Test case when rst =1
        rst = 1'b1 ;#10 ; $finish;
    end
endmodule
