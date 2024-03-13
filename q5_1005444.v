`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 20:00:15
// Design Name: 
// Module Name: ccta
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


module CCTA(
   input [3:0] A,B,C,
   input rst,
   input ctrl,
   output reg[4:0] q
    );
    always @(*) begin
        q = (ctrl == 1'b0) ? (A+B) : (A-C) ; 
    end
    
    always @(posedge rst) begin 
        q = 5'b0;
    end

endmodule
