// T Flip-Flop Implementation in Verilog
// This code is synthesizable and can be used in Vivado projects.

module t_flip_flop (
    input wire clk,    // Clock input
    input wire rst,    // Asynchronous active-high reset
    input wire t,      // Toggle input
    output reg q       // Output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;               // Reset output to 0
    else if (t)
        q <= ~q;                 // Toggle output on T=1
    else
        q <= q;                  // Hold output on T=0
end

endmodule