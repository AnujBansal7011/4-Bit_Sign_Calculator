# 🔢 Calc Type 2 — Sign-Magnitude Calculator

## 📌 About the Project

Calc Type 2 is a combinational calculator designed using **Verilog HDL** and simulated in AMD Xilinx Vivado. It performs addition, subtraction, multiplication, and division using 4-bit magnitude inputs with separate sign bits.

This project helped me understand arithmetic operations, sign handling, RTL design, and functional simulation.

## ⚙️ Supported Operations

| Operation Code | Operation |
|:---:|---|
| `00` | Addition |
| `01` | Subtraction |
| `10` | Multiplication |
| `11` | Division |

## 🔌 Inputs & Outputs

| Signal | Description |
|---|---|
| `Enb` | Enables or disables the calculator |
| `A[3:0]` | First operand magnitude |
| `Sa` | Sign bit of operand A |
| `B[3:0]` | Second operand magnitude |
| `Sb` | Sign bit of operand B |
| `op[1:0]` | Operation selector |
| `Result[7:0]` | Result magnitude |
| `Sr` | Sign bit of the result |

**Sign convention:** `0` = Positive, `1` = Negative.

## 💻 Verilog Source Code

- [`calc_type2.v`](calc_type2.v) — Main Verilog RTL module.

## 🧪 Simulation & Verification

The design was manually simulated using the Vivado Simulator. Different input combinations were applied to verify the arithmetic operations and output behavior.

The tested cases included:

- Addition and subtraction
- Multiplication and division
- Positive and negative operands
- Zero-result handling
- Maximum input values
- Division-by-zero handling
- Enable and disable behavior

### 📈 Simulation Waveforms

[**View Simulation Screenshots →**](Screenshots/)

## 📊 RTL Schematic

The RTL schematic illustrates the hardware structure inferred from the Verilog design.

[**View RTL Schematic →**](Schematic/)

## 🚀 How to Run

1. Open **AMD Xilinx Vivado**.
2. Create a new RTL project.
3. Add `calc_type2.v` as a design source.
4. Run RTL elaboration or synthesis.
5. Apply input combinations using a testbench or Vivado simulation controls.
6. Observe `Result` and `Sr` in the waveform window.

## 🛠️ Tools Used

- Verilog HDL
- AMD Xilinx Vivado
- Vivado Simulator
- Git and GitHub

## 📚 References

- [AMD Vivado Design Suite](https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html)
- [Vivado Logic Simulation Guide](https://docs.amd.com/r/en-US/ug900-vivado-logic-simulation)
- [GitHub Markdown Guide](https://docs.github.com/en/get-started/writing-on-github)

## 🎓 What I Learned

- Designing combinational circuits using Verilog HDL.
- Implementing sign-magnitude arithmetic operations.
- Handling operand signs and zero results.
- Debugging RTL and analyzing simulation waveforms.
- Using Vivado for RTL development and verification.

---

**Author:** Anuj Bansal

*An ECE/VLSI learning project focused on digital design and Verilog RTL development.*
