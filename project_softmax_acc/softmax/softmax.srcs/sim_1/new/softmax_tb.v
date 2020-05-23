`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/15 14:39:35
// Design Name: 
// Module Name: softmax_tb
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

`define CLK_PERIOD  20 //50MHZ
module softmax_tb( );
reg clk;
reg signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9;
wire [15:0] result0,result1,result2,result3,result4,result5,result6,result7,result8,result9;

softmax softmax_inst(
       .x0(x0),
       .x1(x1),
       .x2(x2),
       .x3(x3),
       .x4(x4),
       .x5(x5),
       .x6(x6),
       .x7(x7),
       .x8(x8),
       .x9(x9),
       .result0(result0),
       .result1(result1),
       .result2(result2),
       .result3(result3),
       .result4(result4),
       .result5(result5),
       .result6(result6),
       .result7(result7),
       .result8(result8),
       .result9(result9),
       .aclk(clk)
        );
        
        initial  begin
          clk = 0;
          x0 =0;
          x1 =0;
          x2 =0;
          x3 =0;
          x4=0;
          x5=0;
          x6=0;
          x7=0;
          x8=0;
          x9=0;
          #(`CLK_PERIOD*1000);
          x0 =819;
          x1 =1638;
          x2 =8192;
          x3 =16384;
          x4=24576;
          x5=16384;
          x6=20480;
          x7=24576;
          x8=28672;
          x9=32767;
            #(`CLK_PERIOD);
            x0 =0;
            x1 =0;
            x2 =0;
            x3 =0;
            x4 =0;
            x5 =0;
            x6 =0;
            x7 =0;
            x8 =0;
            x9 =0;
             #(`CLK_PERIOD*10);
            x0 =819;
            x1 =1638;
            x2 =8192;
            x3 =16384;
            x4=24576;
            x5=16384;
            x6=20480;
            x7=24576;
            x8=28672;
            x9=32767;
           #(`CLK_PERIOD*1000);
           $stop;
        end
        
        always #(`CLK_PERIOD/2) clk =~clk;
endmodule
