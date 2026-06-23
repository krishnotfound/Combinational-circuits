module ALU
#(parameter N = 8)
(
input [N-1:0] a,
input [N-1:0] b,
input [3:0] opcode,
output reg [N-1:0] y,
input carry_in,
output reg carry_out,
output parity,
output zero,
output reg invalid_op
);

localparam ADD = 1;
localparam ADD_WITH_CARRY = 2;
localparam SUBTRACT = 3;
localparam INCREMENT = 4;
localparam DECREMENT = 5;
localparam ROTATE_TO_LEFT = 6;
localparam ROTATE_TO_RIGHT = 7;
localparam AND = 8;
localparam LEFT_SHIFT = 9;

always @(*) begin
case (opcode)
ADD                  : {carry_out,y} = a + b;
ADD_WITH_CARRY       : {carry_out,y} = a+b+carry_in;
SUBTRACT             : {carry_out,y} = a-b;
INCREMENT            : {carry_out,y} = a + 1'b1;
DECREMENT            : {carry_out,y} = a - 1'b1;
ROTATE_TO_LEFT       : y = {a[N-2:0],a[N-1]};
ROTATE_TO_RIGHT      : y = {a[0],a[N-1:1]};
AND                  : y = a & b;
LEFT_SHIFT           : y = a << 1'b1;
default              : invalid_op = 1;
endcase
end

assign parity = ^y;
assign zero = (y==0);

endmodule
