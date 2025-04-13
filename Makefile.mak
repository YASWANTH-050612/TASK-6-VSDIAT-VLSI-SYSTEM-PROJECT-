# Makefile for FPGA Project

.PHONY: all program clean

all: top.bit

top.bit: top.v uart_tx.v sensor.v
	yosys -p "synth_ice40 -top top" top.v
	nextpnr-ice40 --json top.json --asc top.asc --pcf pcf_constraints.pcf --freq 12
	icepack top.asc top.bit

program: top.bin
	iceprog top.bin

clean:
	rm -f top.json top.asc top.bit top.bin
