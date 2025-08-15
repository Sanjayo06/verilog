// 1.SR Latch (Level Sensitive, using NAND gates)
module sr_latch (
    input S, R,    // Set and Reset
    output Q, Qn   // Q and Q-bar
);
    nand (Q, S, Qn);
    nand (Qn, R, Q);
endmodule

// D Flip-Flop (Positive Edge Triggered)
module d_flipflop (
    input D, clk,
    output reg Q
);
    always @(posedge clk) begin
        Q <= D;
        end
endmodule

// 3 JK Flip-Flop (Positive Edge Triggered)
module jk_flipflop (
    input J, K, clk,
    output reg Q
);
    always @(posedge clk) begin
        case ({J, K})
            2'b00: Q <= Q;       // No change
            2'b01: Q <= 0;       // Reset
            2'b10: Q <= 1;       // Set
            2'b11: Q <= ~Q;      // Toggle
        endcase
    end
endmodule

// 4 T Flip-Flop (Positive Edge Triggered)
 module t_flipflop (
    input T, clk,
    output reg Q
);
    always @(posedge clk) begin
        if (T)
            Q <= ~Q;   // Toggle
        else
            Q <= Q;    // No change
    end
endmodule