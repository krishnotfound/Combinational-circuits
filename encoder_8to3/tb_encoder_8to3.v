module testbench();
reg [7:0] a;
reg enable;
wire [2:0] y;

encoder_8to3 encuu(
.a(a),
.y(y),
.enable(enable)
);

initial begin
$monitor ("a = %b, y = %d", a, y);
end

initial begin
#1; a = 8'b0000_0001;
#1; a = 8'b0000_0010;
#1; a = 8'b0000_0100;
#1; a = 8'b0000_1000;
#1; a = 8'b0001_0000;
#1; a = 8'b0010_0000;
#1; a = 8'b0100_0000;
#1; a = 8'b1000_0000;
end
endmodule