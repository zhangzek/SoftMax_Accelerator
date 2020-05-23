`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/12 20:52:46
// Design Name: 
// Module Name: addrtodata
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

module addrtodata(addra0,addra1,addra2,addra3,addra4,addra5,addra6,addra7,addra8,addra9,
addrb0,addrb1,addrb2,addrb3,addrb4,addrb5,addrb6,addrb7,addrb8,addrb9,k0,k1,k2,k3,k4,k5,
k6,k7,k8,k9,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,aclk);
input aclk;
input [5:0]addra0,addra1,addra2,addra3,addra4,addra5,addra6,addra7,addra8,addra9;
input [5:0]addrb0,addrb1,addrb2,addrb3,addrb4,addrb5,addrb6,addrb7,addrb8,addrb9;
output [15:0] k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
wire [15:0] k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
blk_mem_gen_0 getk_0(.clka(aclk),.ena(1'b1),.addra(addra0),.douta(k0));
blk_mem_gen_0 getk_1(.clka(aclk),.ena(1'b1),.addra(addra1),.douta(k1));
blk_mem_gen_0 getk_2(.clka(aclk),.ena(1'b1),.addra(addra2),.douta(k2));
blk_mem_gen_0 getk_3(.clka(aclk),.ena(1'b1),.addra(addra3),.douta(k3));
blk_mem_gen_0 getk_4(.clka(aclk),.ena(1'b1),.addra(addra4),.douta(k4));
blk_mem_gen_0 getk_5(.clka(aclk),.ena(1'b1),.addra(addra5),.douta(k5));
blk_mem_gen_0 getk_6(.clka(aclk),.ena(1'b1),.addra(addra6),.douta(k6));
blk_mem_gen_0 getk_7(.clka(aclk),.ena(1'b1),.addra(addra7),.douta(k7));
blk_mem_gen_0 getk_8(.clka(aclk),.ena(1'b1),.addra(addra8),.douta(k8));
blk_mem_gen_0 getk_9(.clka(aclk),.ena(1'b1),.addra(addra9),.douta(k9));
blk_mem_gen_0 getb_0(.clka(aclk),.ena(1'b1),.addra(addrb0),.douta(b0));
blk_mem_gen_0 getb_1(.clka(aclk),.ena(1'b1),.addra(addrb1),.douta(b1));
blk_mem_gen_0 getb_2(.clka(aclk),.ena(1'b1),.addra(addrb2),.douta(b2));
blk_mem_gen_0 getb_3(.clka(aclk),.ena(1'b1),.addra(addrb3),.douta(b3));
blk_mem_gen_0 getb_4(.clka(aclk),.ena(1'b1),.addra(addrb4),.douta(b4));
blk_mem_gen_0 getb_5(.clka(aclk),.ena(1'b1),.addra(addrb5),.douta(b5));
blk_mem_gen_0 getb_6(.clka(aclk),.ena(1'b1),.addra(addrb6),.douta(b6));
blk_mem_gen_0 getb_7(.clka(aclk),.ena(1'b1),.addra(addrb7),.douta(b7));
blk_mem_gen_0 getb_8(.clka(aclk),.ena(1'b1),.addra(addrb8),.douta(b8));
blk_mem_gen_0 getb_9(.clka(aclk),.ena(1'b1),.addra(addrb9),.douta(b9));
endmodule