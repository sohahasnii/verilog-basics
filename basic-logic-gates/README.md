# Logic Gates using Verilog

This project implements basic digital logic gates using **Verilog HDL** and verifies their operation using a **testbench in Vivado**.

## 🛠️ Tools Used

- Verilog HDL
- AMD/Xilinx Vivado
- XSim Simulator

## Logic Gates Implemented

The design takes two inputs, `A` and `B`, and produces the following outputs:

- OR
- AND
- NOT
- NOR
- NAND
- XOR
- XNOR

> The NOT gate operates only on input `A`.
> Can be changed accordingly by changing the line to respective input when necessary .

## 📋 Truth Table

| A | B | OR | AND | NOT A | NOR | NAND | XOR | XNOR |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 1 | 1 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 | 1 | 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 1 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 1 |

## schematic
<img width="834" height="580" alt="image" src="https://github.com/user-attachments/assets/7d4fa5d0-ce5e-4391-a75e-ef3b3b95e103" />

## simulated result 
<img width="1063" height="333" alt="image" src="https://github.com/user-attachments/assets/fc678c61-dc7b-477e-a3d3-c7f2166c8c79" />

