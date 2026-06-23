module testbench();
parameter N = 8;
reg [N-1:0] a;
reg [N-1:0] b;
wire [N:0] sum;

Nbitadder
#(.N(N))
NBITADDER
(
.a(a),
.b(b),
.sum(sum)
);

initial begin 
$monitor ("a = %d, b = %d, sum = %d", a, b, sum);
end

initial begin
    #1; a = 56; b = 12;
    #1; a = 43; b = 89;
    #1; a = 66; b = 45;
    #1; a = 10; b = 34;
  end
  
  endmodule
