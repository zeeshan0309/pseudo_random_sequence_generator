// Code your design here
module pseudo_random_5_bit(A, load, clk, rst);
  output reg [4:0]A;
  input clk, rst;
  input [4:0] load;
  
  always@(posedge clk, negedge rst) begin
    if(!rst) begin
      A[4:0] <= load[4:0];
    end
    else begin
      A[0] <= (A[1]^A[4]);
      A[4:1] <= {A[3], A[2], A[1], A[0]};
    end
  end
endmodule
               
               