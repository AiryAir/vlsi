module mealy_tb();
reg clk;
reg reset;
reg din;
wire y;

mealy_fsm dut (.din(din), .reset(reset), .clk(clk), .y(y));

initial begin
    clk = 0;
    reset = 1;
    din = 0;
    #10 reset = 0;
end

always begin
    #5 clk = ~clk;
end

always @(posedge clk) begin
    $display("At time %0t, din = %b, y = %b", $time, din, y);
end

initial begin
    // Test sequence: 101101
    din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 $finish;
end

endmodule
