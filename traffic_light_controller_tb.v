`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 16:15:54
// Design Name: 
// Module Name: traffic_controller_tb
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


module traffic_controller_tb();
reg clk;
reg rst;
wire [2:0] ns_light;
wire [2:0] ew_light;
traffic_light_controller dut (
    .clk(clk),
    .rst(rst),
    .ns_light(ns_light),
    .ew_light(ew_light)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #100;

    $finish;
end
initial begin
    $monitor("Time=%0t | NS=%b | EW=%b",$time, ns_light, ew_light);
end
endmodule

