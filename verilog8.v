// write a verilog code for traffic light controller

module traffic_light_controller (
    
    input clk, reset,
    output reg red, yellow, green
);

    // State encoding
    parameter RED    = 2'b00,
              GREEN  = 2'b01,
              YELLOW = 2'b10;

    reg [1:0] state, next_state;
    reg [3:0] count; // Counter for delay

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= RED;
            count <= 0;
        end else begin
            state <= next_state;
            count <= count + 1;
        end
    end

    // Next state logic
    always @(*) begin
        case (state)
            RED: begin
                if (count == 4)       // Stay in red for 5 cycles
                    next_state = GREEN;
                else
                    next_state = RED;
            end

            GREEN: begin
                if (count == 3)       // Stay in green for 4 cycles
                    next_state = YELLOW;
                else
                    next_state = GREEN;
            end

            YELLOW: begin
                if (count == 2)       // Stay in yellow for 3 cycles
                    next_state = RED;
                else
                    next_state = YELLOW;
            end

            default: next_state = RED;
        endcase
    end

    // Output logic
    always @(*) begin
        // Default OFF
        red = 0; yellow = 0; green = 0;

        case (state)
            RED:    red    = 1;
            GREEN:  green  = 1;
            YELLOW: yellow = 1;
        endcase
    end

    // Reset counter on state change
    always @(posedge clk) begin
        if (state != next_state)
            count <= 0;
    end

endmodule 