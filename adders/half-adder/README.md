# Half Adder using Verilog HDL

## 📌 Overview

A **Half Adder** is a combinational digital circuit used to add two single-bit binary numbers.
The Half Adder is implemented using **Verilog HDL** and simulated using **XSim in Vivado**.


## 🔢 Truth Table

| A | B | Sum | Carry |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

## Logic Diagram

<img width="1143" height="404" alt="image" src="https://github.com/user-attachments/assets/4a9fa634-93c7-4150-a973-15468346029e" />

## 📊 Simulation

The design was simulated using **Vivado XSim Behavioral Simulation**.

The waveform verifies that:

* Sum is HIGH when only one input is HIGH.
* Sum is LOW when both inputs are the same.
* Carry is HIGH only when both inputs are HIGH.

<img width="1068" height="231" alt="image" src="https://github.com/user-attachments/assets/0c80e013-3d21-4a65-a2b2-e3668bea8efa" />

##  Tools Used

* **Vivado**
* **Verilog HDL**
* **XSim Simulator**


