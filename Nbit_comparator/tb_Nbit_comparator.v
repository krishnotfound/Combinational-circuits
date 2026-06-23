module testbench();
parameter N = 8;
reg [N-1:0] a;
reg [N-1:0] b;
wire smaller;
wire greater;
wire equal;

Nbit_comparator
#(.N(N))
NBITCOMP
(
.a(a),
.b(b),
.smaller(smaller),
.greater(greater),
.equal (equal)
);

initial begin
$monitor ("a = %d, b = %d, smaller = %b, greater = %b, equal = %d", a, b, smaller, greater, equal);
end

initial begin
    #1; a = 5; b = 7;
    #1; a = 98; b = 97;
    #1; a = 8; b = 8;
  end
  
  endmodule
 
