module mealy_fsm(din, reset, clk, y);
input din;
input clk;
input reset;
output reg y;
reg [1:0] cst, nst;

parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;

// State transition logic
always @(posedge clk) begin
    if (reset) begin
        cst <= s0;
        y <= 0;
    end else begin
        case (cst)
            s0: begin
                if (din == 1)
                    nst <= s1;
                else
                    nst <= s0;
            end
            s1: begin
                if (din == 0)
                    nst <= s2;
                else
                    nst <= s0;
            end
            s2: begin
                if (din == 1)
                    nst <= s3;
                else
                    nst <= s0;
            end
            s3: begin
                if (din == 1)
                    nst <= s3;
                else
                    nst <= s0;
            end
            default: nst <= s0;
        endcase
        
        cst <= nst;
        
        // Output logic
        if (cst == s3 && din == 1)
            y <= 1;
        else
            y <= 0;
    end
end

endmodule
