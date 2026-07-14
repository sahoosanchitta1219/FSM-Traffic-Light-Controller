module traffic_light_controller(
    input  wire clk,
    input  wire rst,
    output reg [2:0] ns_light,
    output reg [2:0] ew_light
);

    // State Encoding
    parameter S0 = 2'b00; 
    parameter S1 = 2'b01; 
    parameter S2 = 2'b10; 
    parameter S3 = 2'b11; 

    // Color Encoding
    parameter RED    = 3'b100;
    parameter YELLOW = 3'b010;
    parameter GREEN  = 3'b001;

    reg [1:0] current_state, next_state;

    // State Register (Sequential Logic)
    always @(posedge clk) begin
        if(rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next State Logic (Combinational Logic)
    always @(*) begin
        case(current_state)
            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S3;
            S3: next_state = S0;
            default: next_state = S0;
        endcase
    end

    // Output Logic (Combinational Logic)
    always @(*) begin
        case(current_state)
            S0: begin
                ns_light = GREEN;
                ew_light = RED;
            end
            S1: begin
                ns_light = YELLOW;
                ew_light = RED;
            end
            S2: begin
                ns_light = RED;
                ew_light = GREEN;
            end
            S3: begin
                ns_light = RED;
                ew_light = YELLOW;
            end
            default: begin
                ns_light = RED;
                ew_light = RED;
            end
        endcase
    end

endmodule
