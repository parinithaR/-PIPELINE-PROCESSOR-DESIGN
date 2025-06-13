module tb_pipeline;
 reg clk, reset;
 pipelined_processor uut (.clk(clk), .reset(reset));
 initial begin
    clk = 0; forever #5 clk = ~clk;
 end
 initial begin
    reset = 1; #10; reset = 0;
 end
 endmodule
