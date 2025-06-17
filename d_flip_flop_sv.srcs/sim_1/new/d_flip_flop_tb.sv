`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 14:35:30
// Design Name: 
// Module Name: d_flip_flop_tb
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


`timescale 1ns/1ps

module d_flip_flop_tb;

    logic clk, rst_n, d;
    logic q;

    // DUT instantiation
    d_flip_flop uut (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        rst_n = 0;
        d = 0;

        // Apply reset
        #10 rst_n = 1;
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 1;
        #10 d = 0;

        #20 $finish;
    end

endmodule
