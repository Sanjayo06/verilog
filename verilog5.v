// Create a 4-bit Ripple Carry Adder using Full Adders.
// Full Adder.
module full_adder (
    input a, b, cin,    // three Inputs
    output sum, cout    // Outputs
);
    assign sum  = a ^ b ^ cin;                      // Sum equation
    assign cout = (a & b) | (b & cin) | (a & cin);  // Carry equation
endmodule

// other way to code
// 4-bit Ripple Carry Adder
module ripple_carry_adder_4bit (
    input  [3:0] A, B,   // 4-bit inputs
    input        Cin,    // Initial carry-in
    output [3:0] Sum,    // 4-bit sum
    output       Cout    // Final carry-out
);
    wire c1, c2, c3; // Internal carry wires

    // Instantiate 4 Full Adders
    full_adder fa0 (.a(A[0]), .b(B[0]), .cin(Cin),  .sum(Sum[0]), .cout(c1));
    full_adder fa1 (.a(A[1]), .b(B[1]), .cin(c1),   .sum(Sum[1]), .cout(c2));
    full_adder fa2 (.a(A[2]), .b(B[2]), .cin(c2),   .sum(Sum[2]), .cout(c3));
    full_adder fa3 (.a(A[3]), .b(B[3]), .cin(c3),   .sum(Sum[3]), .cout(Cout));
endmodule
