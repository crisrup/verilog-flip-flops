// SR Flip-Flop (Set-Reset) Verilog Code
// This code is synthesizable and can be used with Vivado

module sr_flip_flop (
    input wire S,    // Set input
    input wire R,    // Reset input
    input wire clk,  // Clock input
    output reg Q,    // Output
    output wire Qn   // Inverted Output
);

// Inverted output assignment
assign Qn = ~Q;

// SR Flip-Flop behavior on clock edge
always @(posedge clk) begin
    case ({S, R})
        2'b00: Q <= Q;       // No change
        2'b01: Q <= 1'b0;    // Reset
        2'b10: Q <= 1'b1;    // Set
        2'b11: Q <= 1'bx;    // Invalid (both set and reset)
    endcase
end

endmodule