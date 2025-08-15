+// operation 1. Not-gate 
module not_gate(
    input a,    //  single input 
    output y    // output 
);
assign y = ~a;
endmodule 

// operation 2. OR-gate 
module or_gate(
    input a,  // input 
    input b,   // input  
    output y     // output 
);
assign y = a || b;
endmodule 

// operation 3. AND-gate 
module and_gate(
    input a,  // input 
    input b,   // input  
    output y     // output 
);
assign y = a && b;
endmodule 

// operation 4. NAND-gate
 module nand_gate(
    input a,  // input 
    input b,   // input  
    output y     // output 
);
assign y = ~(a && b);
endmodule 

// operation 5. OR-gate 
module or_gate(
    input a,  // input 
    input b,   // input  
    output y     // output 
);
assign y = ~(a || b);
endmodule 