`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 04:04:31 AM
// Design Name: 
// Module Name: lab_4_tb
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

module lab_4_tb;

    reg [1:0] a, b;
    wire red, green, blue;

    lab_4 uut (
        .a(a),
        .b(b),
        .red(red),
        .green(green),
        .blue(blue)
    );
    initial begin
        $dumpfile("lab_4_tb.vcd");
        $dumpvars(0, lab_4_tb);

        // Apply test vectors
        a = 2'b00; b = 2'b00; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b00; b = 2'b10; #10;
        a = 2'b00; b = 2'b11; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b01; b = 2'b11; #10;
        a = 2'b10; b = 2'b00; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b10; b = 2'b11; #10;
        a = 2'b11; b = 2'b00; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;
        
        $stop;
    end  

endmodule

