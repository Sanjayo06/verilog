// xor and x-nor operation 
// opreation 1. X-or-gate
module xor_gate(
    input a,b // two input 
    output y   // output 
    );
    assign y = a^b ;
    endmodule 

 // operation 2. X-NOR gate
     module xnor_gate( 
        input a,b // two input
        output y // ouput 
     );
     assign y = ~(a^b);
   endmodule