module adder_tree(
input [3:0] a,
input [3:0] b,
input [7:0] c,
input [7:0] d,
output reg [9:0] sum
);

reg [4:0] sum1;
reg [8:0] sum2;

always @(*) begin
sum1 = a+b;
sum2 = c+d;
sum = sum1 + sum2;
end


endmodule
