# TASK-6-VSDIAT-VLSI-SYSTEM-PROJECT


# Task6 - FPGA VLSI System Project

## Overview

This project implements a simple FPGA design that interfaces with a sensor, processes data, and transmits it over UART. It uses Verilog for design, and the project also includes FPGA toolchain integration (synthesis, place-and-route, bitstream generation).

### Features:
- Sensor interface and data processing
- UART communication
- LED control based on sensor data
- Generated bitstream for FPGA programming

## Steps to Generate Bitstream

1. Clone the repository and navigate to the project directory.
2. Ensure the FPGA toolchain (Yosys, NextPNR, IcePack, IceProg) is installed.
3. Run the following command to generate the bitstream:

Flash the FPGA with the generated bitstream using:

```bash
make program  

## Known issues

- The sensor functionality is simulated due to hardware unavailability.
- The project video demonstration is not uploaded because of PC issues.

## Files:
- `top.v` - Main FPGA design
- `uart_tx.v` - UART module
- `sensor.v` - Sensor interface
- `Makefile` - Build automation
- `top.bit` - FPGA bitstream
- `top.bin` - Binary version of the bitstream
- `timing_report.rpt` - Timing analysis
- `power_report.rpt` - Power consumption report
- `usage_report.rpt` - Resource usage report
- `programming_script.sh` - Script to flash the FPGA
