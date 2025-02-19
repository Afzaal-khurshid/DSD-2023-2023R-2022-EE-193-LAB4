`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 03:04:38 PM
// Design Name: 
// Module Name: lab_4
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

module lab_4(
    input  [1:0] a, b, 
    output red, green, blue  
);

    wire A, B, C, D;  
    
    assign A = a[1];
    assign B = a[0];
    assign C = b[1];
    assign D = b[0];

    assign red   = (~C & ~D) | (A & ~C) | (B & ~C) | (A & ~D) | (A & B);
    assign green = (C & D) | (~A & ~B) | (~A & C) | (~B & C) | (~A & D);
    assign blue  = (A ^ C) | (B ^ D);

endmodule





