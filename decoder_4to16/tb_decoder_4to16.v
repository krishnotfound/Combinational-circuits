module testbench();
reg [3:0] a;
wire [15:0] y;
integer i;

decoder_4to16 DEOOO(
.a(a),
.y(y)
);

initial begin
$monitor ("a =%d, y = %b", a, y);
end

initial begin
    for (i = 0; i<16; i = i + 1) begin
      #1; a = i; 
    end
  end
  
  endmodule