`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/08/18 21:15:16
// Design Name: 
// Module Name: cpu_tb
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


module cpu_tb(

    );
    reg clk,rst;
    wire [31:0] pc;
    cpu cpu(
        .clk(clk),
        .rst(rst),
        .pc(pc)
        );
     initial
        begin
        #1
            clk<=0;
            rst<=0;
            #0.5 rst<=1;
            #0.5 rst<=0;
            forever begin
            #5 clk=~clk;
            end
        end
endmodule
