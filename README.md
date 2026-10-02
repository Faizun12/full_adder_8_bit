8-Bit Structural Adder in VHDL

This repository contains the VHDL implementation and simulation of an 8-bit Adder designed using a hierarchical structural modeling approach in Xilinx ISE.

🏗️ Architecture & Methodology

The project follows a modular and hierarchical design principle:

Basic Logic Gates: Primitive gates (XOR, AND, OR) defined at the gate level.

1-Bit Full Adder: Constructed by structurally interconnecting the basic logic gates.

8-Bit Adder: Implemented by cascading eight 1-bit Full Adders sequentially with explicit port mapping to enable carry propagation across bits.

       [A7..0]   [B7..0]
          │         │
          ▼         ▼
    ┌───────────────────┐
    │  8-Bit Full Adder │◄─── Cin
    └───────────────────┘
          │         │
          ▼         ▼
       [Sum7..0]   Cout



📂 Project Structure

and_gate.vhd, or_gate.vhd, xor_gate.vhd: Primitive logic gate components.

full_adder_1_bit.vhd: 1-Bit Full Adder structural architecture.

full_adder_8_bit.vhd: Top-level 8-Bit Structural Adder unit.

full_adder_8_bit_tb.vhd: Testbench for functional verification and timing waveform simulation.

🛠️ Tools & Technologies

Language: VHDL

Simulation & Synthesis Tool: Xilinx ISE Design Suite 14.7 / ISim

Version Control: Git / GitHub

🚀 How to Run the Simulation

Open Xilinx ISE and create a new project targeting your specific FPGA device (or default settings).

Add all .vhd source files to the project design hierarchy.

Set full_adder_8_bit_tb.vhd as the top-level module for simulation.

Run Behavioral Simulation using ISim to observe waveform results for various 8-bit addition test vectors.
