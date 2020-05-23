
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/12 20:52:46
// Design Name: 
// Module Name:getf
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

module getf(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,result0,result1,result2,result3,result4,result5,result6,result7,result8,result9,aclk);
input aclk;
input [15:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9;
output[15:0] result0,result1,result2,result3,result4,result5,result6,result7,result8,result9;
wire [15:0] f0,f1,f2,f3,f4,f5,f6,f7,f;
wire g01,g02,g11,g12,g21,g22,g31,g32,g41,g42,g51,g52,g61,g62,g71,g72,g81,g82;
wire gg0,gg1,gg2,gg3,gg4,gg5,gg6,gg7,gg8;
wire d01,d02,d11,d12,d21,d22,d31,d32,d41,d42,d51,d52,d61,d62,d71,d72,d81,d82,d91,d92;
wire dd0,dd1,dd2,dd3,dd4,dd5,dd6,dd7,dd8,dd9;
wire [15:0] result0,result1,result2,result3,result4,result5,result6,result7,result8,result9;

//f0 = y0 +y1
floating_point_1     getf0( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g01),
                            .s_axis_a_tdata(y0),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g02), 
                            .s_axis_b_tdata(y1), 
                            .m_axis_result_tvalid(gg0), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f0));
//f1 = y2 +y3                            
floating_point_1     getf1( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g11),
                            .s_axis_a_tdata(y2),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g12), 
                            .s_axis_b_tdata(y3), 
                            .m_axis_result_tvalid(gg1), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f1));
//f2 = y4 +y5  
floating_point_1     getf2( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g21),
                            .s_axis_a_tdata(y4),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g22), 
                            .s_axis_b_tdata(y5), 
                            .m_axis_result_tvalid(gg2), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f2));
//f3 = y6 + y7
floating_point_1     getf3( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g31),
                            .s_axis_a_tdata(y6),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g32), 
                            .s_axis_b_tdata(y7), 
                            .m_axis_result_tvalid(gg3), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f3));
//f4 = y8 + y9
floating_point_1     getf4(.aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g41),
                            .s_axis_a_tdata(y8),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g42), 
                            .s_axis_b_tdata(y9), 
                            .m_axis_result_tvalid(gg4), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f4));
//f5 = f0 + f1
floating_point_1     getf5( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g51),
                            .s_axis_a_tdata(f0),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g52), 
                            .s_axis_b_tdata(f1), 
                            .m_axis_result_tvalid(gg5), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f5));
//f6 = f2 + f3
floating_point_1     getf6( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g61),
                            .s_axis_a_tdata(f2),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g62), 
                            .s_axis_b_tdata(f3), 
                            .m_axis_result_tvalid(gg6), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f6));
 //f7 = f5 + f6
floating_point_1     getf7( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g71),
                            .s_axis_a_tdata(f5),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g72), 
                            .s_axis_b_tdata(f6), 
                            .m_axis_result_tvalid(gg7), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f7));
 //f = f7+ f4 = y0 + y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8 + y9
floating_point_1     getf( .aclk(aclk),
                            .s_axis_a_tvalid(1'b1),
                            .s_axis_a_tready(g81),
                            .s_axis_a_tdata(f7),
                            .s_axis_b_tvalid(1'b1), 
                            .s_axis_b_tready(g82), 
                            .s_axis_b_tdata(f4), 
                            .m_axis_result_tvalid(gg8), 
                            .m_axis_result_tready(1'b1), 
                            .m_axis_result_tdata(f));
// result0 = y0/f
divide                getresult0(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d01),
                                 .s_axis_a_tdata(y0),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d02),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd0), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result0));
                                 
 // result1 = y1/f
divide                getresult1(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d11),
                                 .s_axis_a_tdata(y1),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d12),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd1), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result1));
divide                getresult2(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d21),
                                 .s_axis_a_tdata(y2),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d22),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd2), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result2));
divide                getresult3(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d31),
                                 .s_axis_a_tdata(y3),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d32),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd3), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result3));
divide                getresult4(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d41),
                                 .s_axis_a_tdata(y4),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d42),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd4), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result4));
divide                getresult5(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d51),
                                 .s_axis_a_tdata(y5),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d52),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd5), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result5));
divide                getresult6(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d61),
                                 .s_axis_a_tdata(y6),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d62),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd6), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result6));
divide                getresult7(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d71),
                                 .s_axis_a_tdata(y7),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d72),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd7), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result7));
divide                getresult8(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d81),
                                 .s_axis_a_tdata(y8),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d82),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd8), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result8));
divide                getresult9(.aclk(aclk), 
                                 .s_axis_a_tvalid(1'b1),
                                 .s_axis_a_tready(d91),
                                 .s_axis_a_tdata(y9),
                                 .s_axis_b_tvalid(1'b1),
                                 .s_axis_b_tready(d92),
                                 .s_axis_b_tdata(f),
                                 .m_axis_result_tvalid(dd9), 
                                 .m_axis_result_tready(1'b1),
                                 .m_axis_result_tdata(result9));

endmodule