module red(
input [11:0] redin3,
input [11:0] redin2,
input [11:0] redin1,
input [11:0] redin0,
input clock1,
output [3:0] redout3,
output [3:0] redout2,
output [3:0] redout1,
output [3:0] redout0
output [15:0] cacatedata

);
/*
always@(posedge clock)begin

reg[3:0] mem[0:16383]

redout0 <= #1 mem[redin0];//read stuff
redout1 <= #1 mem[redin1];
redout2 <= #1 mem[redin2];
redout3 <= #1 mem[redin3];
end
*/
assign cacatedata = {redout3,redout2,redout1,redout0};

roms_r0 re0(.address(redin0), .clock(clock1), .data_out(redout0));
roms_r1 re1(.address(redin1), .clock(clock1), .data_out(redout1));
roms_r2 re2(.address(redin2), .clock(clock1), .data_out(redout2));
roms_r3 re3(.address(redin3), .clock(clock1), .data_out(redout3));


endmodule
