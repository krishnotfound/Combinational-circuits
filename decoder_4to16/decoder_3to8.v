module decoder_3to8(
input [2:0] a,
output reg [7:0] y,
input enable
);

always @(*) begin
if (enable == 0) begin
y = 0;
end

else begin
y = 1 << a ;
end
end

endmodule