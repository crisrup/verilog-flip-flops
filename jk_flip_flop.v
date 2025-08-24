// JK Flip Flop Implementation in Verilog
// This is a behavioral model suitable for synthesis in Vivado.

module jk_flip_flop (
    input wire clk,    // Clock input
    input wire rst,    // Asynchronous reset (active high)
    input wire j,      // J input
    input wire k,      // K input
    output reg q,      // Output Q
    output wire q_bar  // Output Q-bar (complement)
);

assign q_bar = ~q;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 1'b0; // Reset output to 0
    end else begin
        case ({j, k})
            2'b00: q <= q;           // No change
            2'b01: q <= 1'b0;        // Reset
            2'b10: q <= 1'b1;        // Set
            2'b11: q <= ~q;          // Toggle
        endcase
    end
end

endmodule