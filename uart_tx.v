module uart_tx_module(input clk, input rst, input [7:0] data_in, input start, output tx);
    reg [7:0] data_reg;
    reg start_reg;
    wire tx_busy;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_reg <= 8'b0;
            start_reg <= 0;
        end else if (start) begin
            data_reg <= data_in;
            start_reg <= 1;
        end
    end

    // UART transmission logic here
    assign tx = tx_busy ? 1'b0 : data_reg[0];  // Simplified transmission
endmodule
