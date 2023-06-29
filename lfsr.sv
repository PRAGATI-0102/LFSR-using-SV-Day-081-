`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2023 11:33:06 PM
// Design Name: 
// Module Name: lfsr
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


module lfsr#(parameter SEED = 4'hF)(
    input logic clk,
    input logic rst,
    input logic en,
    output logic [3:0] lfsr);

    reg [3:0] lfsr_w;
    initial begin
    lfsr_w = SEED;
    end
    always @(posedge clk)
        if (rst == 1'b0)
            lfsr_w <= SEED;
        else if (en)
            begin
                lfsr_w[3:1] <= lfsr_w[2:0];
                lfsr_w[0] <= ^lfsr_w[3:2];
            end
            
    assign lfsr = lfsr_w;
endmodule
