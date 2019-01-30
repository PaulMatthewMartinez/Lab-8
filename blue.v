module blue(
input [11:0] bluein3,
input [11:0] bluein2,
input [11:0] bluein1,
input [11:0] bluein0,
input clock1,
output [3:0] blueout3,
output [3:0] blueout2,
output [3:0] blueout1,
output [3:0] blueout0,
output [15:0] cacatedata
);

/*
);
always@(posedge clock)begin

reg[3:0] mem[0:16383]

redout0 <= #1 mem[redin0];//read stuff
redout1 <= #1 mem[redin1];
redout2 <= #1 mem[redin2];
redout3 <= #1 mem[redin3];
end
*/
assign cacatedata = {blueout3,blueout2,blueout1,blueout0};


roms_b0 bl0(.address(bluein0),.clock(clock1), .data_out(blueout0));
roms_b1 bl1(.address(bluein1),.clock(clock1), .data_out(blueout1));
roms_b2 bl2(.address(bluein2), .clock(clock1),.data_out(blueout2));
roms_b3 bl3(.address(bluein3), .clock(clock1),.data_out(blueout3));

endmodule
