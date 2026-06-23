module testbench();
parameter N = 8;
reg [N-1:0] a;
reg [N-1:0] b;
reg [3:0] opcode;
reg carry_in;
wire [N-1:0] y;
wire parity;
wire carry_out;
wire zero;
wire invalid_op;

ALU
#(.N(N))
alu8bit
(
.a(a),
.b(b),
.opcode(opcode),
.carry_in(carry_in),
.carry_out(carry_out),
.y(y),
.parity(parity),
.zero(zero),
.invalid_op(invalid_op)
);

initial begin
$monitor ("a = %b, b = %b, y = %b, opcode = %b, carry_in = %b, carry_out = %b, parity = %b, zero = %b, invalid_op = %b", a, b, y, opcode, carry_in, carry_out, parity, zero, invalid_op);
end

initial begin

#1; $display ("TEST FOR INVALID OPERATION");
a = 32; b = 12; carry_in = 0; opcode = 0;

#1; $display ("TEST FOR ADDITION");
a = 12; b = 23; carry_in = 0; opcode = 1;

#1; $display ("TEST FOR ADDITION WITH CARRY");
a = 12; b = 23; carry_in = 1; opcode = 2;

#1; $display ("TEST FOR SUBTRACTION");
a = 5; b = 4; carry_in = 0; opcode = 3;

#1; $display ("TEST FOR INCREMENT");
a = 5; opcode = 4;

#1; $display ("TEST FOR DECREMENT");
a = 7; opcode = 5;

#1; $display ("TEST FOR ROTATION TO LEFT");
a = 9; opcode = 6;

#1; $display ("TEST FOR ROTATION TO RIGHT");
a = 8; opcode = 7;

#1; $display ("TEST FOR AND");
a = 4; b = 6; opcode = 8;

#1; $display ("TEST FOR LEFT SHIFT");
a = 3; opcode = 9;

end
endmodule
