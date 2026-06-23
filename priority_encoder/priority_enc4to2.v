module priority_enc(
input [3:0] a,
output reg [1:0] y,
output reg valid
);

always @(*) begin
if (a[0])
y = 0;
else if (a[1])
y = 1;
else if (a[2])
y = 2;
else if (a[3])
y = 3;
end

always @(*) begin
if (a == 0)
valid = 0;
else 
valid = 1;
end
endmodule
