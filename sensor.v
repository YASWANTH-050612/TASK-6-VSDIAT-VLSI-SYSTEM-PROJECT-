module sensor_interface(input clk, input rst, input sensor_in, output [7:0] data, output ready);
    reg [7:0] sensor_data;
    reg data_ready;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sensor_data <= 8'b0;
            data_ready <= 0;
        end else begin
            sensor_data <= {sensor_data[6:0], sensor_in};  // Shift in sensor data
            data_ready <= 1;  // Signal that new data is ready
        end
    end
    
    assign data = sensor_data;
    assign ready = data_ready;
endmodule
