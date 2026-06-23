module testbench();
reg [2:0] a;
wire [7:0] y;
reg enable;

decoder_3to8 DECODER (
.a(a),
.y(y),
.enable(enable)
);

initial begin
$monitor ("a = %d, y = %b, enable = %b", a, y, enable);
end

initial begin
    a = 0; enable = 0;
    #1; a = 0; enable = 1;
    #1; a = 1; enable = 1;
    #1; a = 2; enable = 1;
    #1; a = 3; enable = 1;
    #1; a = 4; enable = 1;
    #1; a = 5; enable = 1;
    #1; a = 6; enable = 1;
    #1; a = 7; enable = 1;
  end
  endmodule