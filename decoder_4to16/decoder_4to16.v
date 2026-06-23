module decoder_4to16(
input [3:0] a,
output [15:0] y
);

decoder_3to8 deccoo(
.a(a[2:0]),
.y(y[7:0]),
.enable(~a[3])
);

decoder_3to8 deccoo1(
.a(a[2:0]),
.y(y[15:8]),
.enable(a[3])
);


endmodule
