
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/12 20:52:46
// Design Name: 
// Module Name: gety
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// y = kx + b
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module gety(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,
b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,aclk);
input aclk;
input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
output[15:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9;
wire [15:0] y0,y1,y2,y3,y4,y5,y6,y7,y8,y9;
wire m01,m02,m03,m11,m12,m13,m21,m22,m23,m31,m32,m33,m41,m42,m43,m51,m52,m53,m61,m62,m63,m71,m72,m73,m81,m82,m83,m91,m92,m93;
wire n0,n1,n2,n3,n4,n5,n6,n7,n8,n9;
floating_point_0   gety0(.aclk(aclk),
                         .s_axis_a_tvalid(1'b1),
                         .s_axis_a_tready(m01),
                         .s_axis_a_tdata(k0), //k
                         .s_axis_b_tvalid(1'b1),
                         .s_axis_b_tready(m02), 
                         .s_axis_b_tdata(x0), //x
                          .s_axis_c_tvalid(1'b1), 
                         .s_axis_c_tready(m03), 
                         .s_axis_c_tdata(b0), //b
                         .m_axis_result_tvalid(n0),
                         .m_axis_result_tready(1'b1),
                         .m_axis_result_tdata(y0));//y
floating_point_0   gety1(.aclk(aclk),
                         .s_axis_a_tvalid(1'b1),
                         .s_axis_a_tready(m11),
                         .s_axis_a_tdata(k1),
                         .s_axis_b_tvalid(1'b1),
                         .s_axis_b_tready(m12), 
                         .s_axis_b_tdata(x1), 
                         .s_axis_c_tvalid(1'b1), 
                         .s_axis_c_tready(m13), 
                         .s_axis_c_tdata(b1), 
                         .m_axis_result_tvalid(n1),
                         .m_axis_result_tready(1'b1),
                         .m_axis_result_tdata(y1));                 
floating_point_0   gety2(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m21),
                                                  .s_axis_a_tdata(k2),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m22), 
                                                  .s_axis_b_tdata(x2), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m23), 
                                                  .s_axis_c_tdata(b2), 
                                                  .m_axis_result_tvalid(n2),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y2));                      
                         floating_point_0   gety3(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m31),
                                                  .s_axis_a_tdata(k3),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m32), 
                                                  .s_axis_b_tdata(x3), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m33), 
                                                  .s_axis_c_tdata(b3), 
                                                  .m_axis_result_tvalid(n3),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y3));
                         floating_point_0   gety4(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m41),
                                                  .s_axis_a_tdata(k4),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m42), 
                                                  .s_axis_b_tdata(x4), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m43), 
                                                  .s_axis_c_tdata(b4), 
                                                  .m_axis_result_tvalid(n4),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y4)); 
                         floating_point_0   gety5(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m51),
                                                  .s_axis_a_tdata(k5),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m52), 
                                                  .s_axis_b_tdata(x5), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m53), 
                                                  .s_axis_c_tdata(b5), 
                                                  .m_axis_result_tvalid(n5),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y5));
                         floating_point_0   gety6(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m61),
                                                  .s_axis_a_tdata(k6),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m62), 
                                                  .s_axis_b_tdata(x6), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m63), 
                                                  .s_axis_c_tdata(b6), 
                                                  .m_axis_result_tvalid(n6),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y6));
                         floating_point_0   gety7(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m71),
                                                  .s_axis_a_tdata(k7),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m72), 
                                                  .s_axis_b_tdata(x7), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m73), 
                                                  .s_axis_c_tdata(b7), 
                                                  .m_axis_result_tvalid(n7),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y7));
                         floating_point_0   gety8(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m81),
                                                  .s_axis_a_tdata(k8),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m82), 
                                                  .s_axis_b_tdata(x8), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m83), 
                                                  .s_axis_c_tdata(b8), 
                                                  .m_axis_result_tvalid(n8),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y8));
                         floating_point_0   gety9(.aclk(aclk),
                                                  .s_axis_a_tvalid(1'b1),
                                                  .s_axis_a_tready(m91),
                                                  .s_axis_a_tdata(k9),
                                                  .s_axis_b_tvalid(1'b1),
                                                  .s_axis_b_tready(m92), 
                                                  .s_axis_b_tdata(x9), 
                                                  .s_axis_c_tvalid(1'b1), 
                                                  .s_axis_c_tready(m93), 
                                                  .s_axis_c_tdata(b9), 
                                                  .m_axis_result_tvalid(n9),
                                                  .m_axis_result_tready(1'b1),
                                                  .m_axis_result_tdata(y9));                        
endmodule