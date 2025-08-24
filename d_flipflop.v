// D Flip-Flop with Asynchronous Reset
module d_flip_flop (
    input wire clk,      // Clock input
    input wire rst_n,    // Asynchronous active-low reset
    input wire d,        // Data input
    output reg q         // Output
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= 1'b0;      // Reset output to 0
    else
        q <= d;         // Transfer input to output on clock edge
end

endmodule