`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2023 11:37:28 PM
// Design Name: 
// Module Name: lfsr_tb
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


module lfsr_tb();

    logic clk;
    logic rst;
    logic en;
    logic [3:0] lfsr;
    
    lfsr dut(.*);
    
    always #5 clk = ~clk;
    
    initial 
    begin
        clk = 0;
        rst = 0;
        en = 0;
        #10;
        rst = 1;
        #10;
        en = 1;
        #400;
        $finish();  
    end
endmodule
