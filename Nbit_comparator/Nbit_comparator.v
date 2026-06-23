module Nbit_comparator
#( parameter N = 8 )
(
input [N-1:0] a,
input [N-1:0] b,
output reg smaller,
output reg greater,
output reg equal
);

always @(*) begin
smaller = 0;
greater = 0;
equal = 0;

if (a > b)
greater = 1;
else if (a<b)
smaller = 1;
else 
equal = 1;

end

endmodule
