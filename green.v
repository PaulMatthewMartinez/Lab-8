module green(
input [11:0] greenin3,
input [11:0] greenin2,
input [11:0] greenin1,
input [11:0] greenin0,
input clock1,
output [3:0] greenout3,
output [3:0] greenout2,
output [3:0] greenout1,
output [3:0] greenout0
output [15:0] cacatedata

);


assign cacatedata = {greenout3,greenout2,greenout1,greenout0};


roms_g0 gre0(.address(greenin0),.clock(clock1), .data_out(greenout0));
roms_g1 gre1(.address(greenin1), .clock(clock1),.data_out(greenout1));
roms_g2 gre2(.address(greenin2), .clock(clock1),.data_out(greenout2));
roms_g3 gre3(.address(greenin3), .clock(clock1),.data_out(greenout3));

endmodule
