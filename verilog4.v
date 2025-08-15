// half subtracter and full subtracter
 
// 1. half subtracteer 
module half_subtracter(
    input a,b  // two input 
    output diff, borrow
);
assign diff = a^b; // Xor for diff.
assign borrow = ~(a&b) // borrow logic.
endmodule

// 2. full subtracter

module full_subtracter( 
    input a,b,c  // three input
    output diff, borow  // output
);
assign diff = a^b^c; 
assign borrow = ~(a&b) | ~(b&c) |~(a&c);
endmodule