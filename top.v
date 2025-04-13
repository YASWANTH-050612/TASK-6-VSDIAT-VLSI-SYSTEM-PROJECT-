module top(input clk, input rst, input sensor_in, output uart_tx);
    wire [7:0] sensor_data;
    wire sensor_ready;
    wire [7:0] uart_data;
    
    sensor_interface sensor_inst (.clk(clk), .rst(rst), .sensor_in(sensor_in), .data(sensor_data), .ready(sensor_ready));
    uart_tx_module uart_inst (.clk(clk), .rst(rst), .data_in(sensor_data), .start(sensor_ready), .tx(uart_tx));
    
    assign uart_data = sensor_ready ? sensor_data : 8'b0;
endmodule
