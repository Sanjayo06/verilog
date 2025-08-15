// 1-to-4 Demultiplexer
module demux_1to4 (
    input D,        // Data input
    input S1, S0,   // Select lines
    output Y0, Y1, Y2, Y3 // Outputs
);
    assign Y0 = D & ~S1 & ~S0;
    assign Y1 = D & ~S1 &  S0;
    assign Y2 = D &  S1 & ~S0;
    assign Y3 = D &  S1 &  S0;
endmodule
