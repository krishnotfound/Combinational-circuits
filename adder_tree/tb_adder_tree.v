module testbench();
reg [3:0] a;
reg [3:0] b;
reg [7:0] c;
reg [7:0] d;
wire [9:0] sum;

adder_tree ADDD(
.a(a),
.b(b),
.c(c),
.d(d),
.sum(sum)
);

initial begin 
$monitor ("a = %d, b = %d, c = %d, d = %d, sum = %d", a, b, c, d, sum);
end

initial begin
    #1; a = 4'b0000; b = 4'b1111; c = 8'b1010_1010; d = 8'b1111_0000;
    #1; a = 5; b = 93; c = 29; d = 110;
    #1; a = 54; b = 26; c = 9; d = 130;
	end
	endmodule