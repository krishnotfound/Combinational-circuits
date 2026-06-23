module testbench();
  reg [3:0] x;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire dot;
  integer i;
  wire [6:0] temp = {a,b,c,d,e,f,g};
  
  segment_7_display seg7dis(
    .x(x), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dot(dot)
  );
  
  initial begin
    $monitor ($time, "x = %d, seg_code = %b, dot = %d", x, temp, dot);
  end
  
  initial begin
    for (i=0; i<9; i = i+1) begin
      #1; x = i;
    end
  end
  
endmodule