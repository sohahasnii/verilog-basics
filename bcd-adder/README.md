# BCD Adder using Verilog

## Overview
A BCD (Binary Coded Decimal) Adder is a digital circuit that performs addition of two BCD digits and produces a valid BCD result.

Since a 4-bit binary adder can produce results greater than 9, a correction is required to obtain a valid BCD output.

This project implements a BCD Adder using Verilog HDL and verifies its functionality through simulation.

## Working Principle

The BCD Adder works in two stages:

1. **Binary Addition:** Two 4-bit BCD inputs are added along with the carry input using a 4-bit binary adder.
2. **BCD Correction:** If the sum is greater than 9 (1001) or a carry is generated, 0110 (decimal 6) is added to correct the result into a valid BCD representation.

### Correction Condition

BCD correction is required when:

- The binary sum is greater than 1001.
- OR a carry is generated from the binary addition.

The correction logic is:

`K = C_out + (S3 & S2) + (S3 & S1)`

Where:
- `C_out` = Carry from the initial addition
- `S3, S2, S1` = Sum bits

## Truth Table / Examples

| Input A | Input B | Decimal Result | BCD Output |
|---|---|---|---|
| 0010 (2) | 0011 (3) | 5 | 0101 |
| 0100 (4) | 0101 (5) | 9 | 1001 |
| 0111 (7) | 0011 (3) | 10 | 0001 0000 |
| 1000 (8) | 1001 (9) | 17 | 0001 0111 |

## Technologies Used
- Xilinx Vivado



