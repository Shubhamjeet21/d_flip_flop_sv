`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 13:28:35
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop (
    input  logic clk,
    input  logic rst_n,
    input  logic d,
    output logic q
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 0;
        else
            q <= d;
    end

endmodule
