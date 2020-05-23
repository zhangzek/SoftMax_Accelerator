`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/12 20:52:46
// Design Name: 
// Module Name:softmax
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


module softmax(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,result0,result1,result2,result3,result4,result5,result6,result7,result8,result9,aclk);
input aclk;
input signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9;
output  [15:0] result0,result1,result2,result3,result4,result5,result6,result7,result8,result9;
wire [5:0] addra0,addra1,addra2,addra3,addra4,addra5,addra6,addra7,addra8,addra9;
wire [5:0] addrb0,addrb1,addrb2,addrb3,addrb4,addrb5,addrb6,addrb7,addrb8,addrb9; 
wire [15:0] k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
wire [15:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9;
wire [15:0] result0,result1,result2,result3,result4,result5,result6,result7,result8,result9;

//----------------------------------------------
// X-->addra and addrb
//----------------------------------------------
getaddr    getaddr( .x0(x0),
                    .x1(x1),
                    .x2(x2),
                    .x3(x3),
                    .x4(x4),
                    .x5(x5),
                    .x6(x6),
                    .x7(x7),
                    .x8(x8),
                    .x9(x9),
                    .addra0(addra0),
                    .addra1(addra1),
                    .addra2(addra2),
                    .addra3(addra3),
                    .addra4(addra4),
                    .addra5(addra5),
                    .addra6(addra6),
                    .addra7(addra7),
                    .addra8(addra8),
                    .addra9(addra9),
                    .addrb0(addrb0),
                    .addrb1(addrb1),
                    .addrb2(addrb2),
                    .addrb3(addrb3),
                    .addrb4(addrb4),
                    .addrb5(addrb5),
                    .addrb6(addrb6),
                    .addrb7(addrb7),
                    .addrb8(addrb8),
                    .addrb9(addrb9),
                    .aclk(aclk));
                    
                    
//----------------------------------------------------------
//addra addrb ---> k and b
//----------------------------------------------------------
addrtodata addrtodata(.addra0(addra0),
                      .addra1(addra1),
                      .addra2(addra2),
                      .addra3(addra3),
                      .addra4(addra4),
                      .addra5(addra5),
                      .addra6(addra6),
                      .addra7(addra7),
                      .addra8(addra8),
                      .addra9(addra9),
                      .addrb0(addrb0),
                      .addrb1(addrb1),
                      .addrb2(addrb2),
                      .addrb3(addrb3),
                      .addrb4(addrb4),
                      .addrb5(addrb5),
                      .addrb6(addrb6),
                      .addrb7(addrb7),
                      .addrb8(addrb8),
                      .addrb9(addrb9),
                      .k0(k0),
                      .k1(k1),
                      .k2(k2),
                      .k3(k3),
                      .k4(k4),
                      .k5(k5),
                      .k6(k6),
                      .k7(k7),
                      .k8(k8),
                      .k9(k9),
                      .b0(b0),
                      .b1(b1),
                      .b2(b2),
                      .b3(b3),
                      .b4(b4),
                      .b5(b5),
                      .b6(b6),
                      .b7(b7),
                      .b8(b8),
                      .b9(b9),
                      .aclk(aclk));
                      
                      
//-----------------------------------------
//x k b ---> y
//-----------------------------------------
gety             gety(.x0(x0),
                      .x1(x1),
                      .x2(x2),
                      .x3(x3),
                      .x4(x4),
                      .x5(x5),
                      .x6(x6),
                      .x7(x7),
                      .x8(x8),
                      .x9(x9),
                      .k0(k0),
                      .k1(k1),
                      .k2(k2),
                      .k3(k3),
                      .k4(k4),
                      .k5(k5),
                      .k6(k6),
                      .k7(k7),
                      .k8(k8),
                      .k9(k9),
                      .b0(b0),
                      .b1(b1),
                      .b2(b2),
                      .b3(b3),
                      .b4(b4),
                      .b5(b5),
                      .b6(b6),
                      .b7(b7),
                      .b8(b8),
                      .b9(b9),
                      .y0(y0),
                      .y1(y1),
                      .y2(y2),
                      .y3(y3),
                      .y4(y4),
                      .y5(y5),
                      .y6(y6),
                      .y7(y7),
                      .y8(y8),
                      .y9(y9),
                      .aclk(aclk));
                      
//---------------------------------------------------
// y ----> result
//---------------------------------------------------
getf             getf(.y0(y0),
                      .y1(y1),
                      .y2(y2),
                      .y3(y3),
                      .y4(y4),
                      .y5(y5),
                      .y6(y6),
                      .y7(y7),
                      .y8(y8),
                      .y9(y9),
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
                      .aclk(aclk));
endmodule