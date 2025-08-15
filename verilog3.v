// half adder and full adder

// 1.  half adder 
module half_adder(
    input a,b     // two input
    output sum, carry  // output 
);
assign sum = a^b; // XOR for sum.
assign carry = a & b; // AND for carry.
endmodule


// 2. full adder 
module full_adder (
    input a,b,c  // three input input
    output sum,carry // output
);
assign sum = (a^b^c); // xnor for sum.
assign carry = (a&b)|(b&c)|(a&c); // three AND for carry. 
 endmodule