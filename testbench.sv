// Code your testbench here
// or browse Examples
module t_pseudo_random_5_bit;
  wire [4:0] A;
  reg [4:0] load;
  reg rst, clk;
  
  pseudo_random_5_bit M_UUT(A, load, clk, rst);
  
  always
    #5 clk = ~clk;
  initial
    begin
      $dumpfile("random.vcd");
      $dumpvars(0, t_pseudo_random_5_bit);
      $monitor($time, " | rst=%b || A=%b", rst, A);
      rst=1'b1; load=5'b10000; clk=1'b0;
      #1 rst=1'b0;
      #1 rst=1'b1;
      #320 $finish;
    end
endmodule