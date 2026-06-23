module testbench ();
  reg [3:0] a;
  wire [1:0] y;
  wire valid;
  
  priority_enc PE42(
    .a(a),
    .y(y),
    .valid(valid)
  );
  
  initial begin
    $monitor ("a = %b, y = %b, valid = %b",a,y,valid);
  end
  
  initial begin
    #1; a = 4'b0000;
    #1; a = 4'b0001;
    #1; a = 4'b0010;
    #1; a = 4'b0100;
    #1; a = 4'b1000;
  end
endmodule