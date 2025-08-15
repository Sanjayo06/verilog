// write a verilog code for Design an ALU that can perform addition, subtraction, AND, OR, and XOR based on a 3-bit control 
module ALU (
    input  [7:0] A, B,        // 8-bit inputs
    input  [2:0] control,     // 3-bit control signal
    output reg [7:0] result,  // 8-bit result
    output reg carry          // Carry/borrow flag
);

    always @(*) begin
        case (control)
            3'b000: {carry, result} = A + B;   // Addition
            3'b001: {carry, result} = A - B;   // Subtraction
            3'b010: begin                      // AND
            result = A & B;
            carry  = 0;
    end

    3'b011: begin     // OR
    result = A | B;
    carry  = 0;
    end
    3'b100: begin           // XOR
    result = A ^ B;
    carry  = 0;
    end

 default: begin
result = 8'b00000000;  // Default output
carry  = 0;
         end
        endcase
         end

endmodule
