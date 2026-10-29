# 🔢 Calc Type 2 — Sign-Magnitude Calculator

## 📌 About the Project

Calc Type 2 is a combinational calculator designed using **Verilog HDL** and simulated in AMD Xilinx Vivado. It performs four basic arithmetic operations — addition, subtraction, multiplication, and division — using 4-bit magnitude inputs with separate sign bits.

This project helped me understand RTL design, arithmetic logic, sign handling, and functional simulation.

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

The Verilog RTL source files are available in the following repository folder:

[**📂 View Design Source Code**](design_source/)

## 🧪 Simulation & Verification

The design was manually simulated using the Vivado Simulator by applying different input combinations and checking the output waveforms.

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

The RTL schematic shows the hardware structure inferred from the Verilog design.

[**View Schematic Files →**](Schematic/)

## 🚀 How to Run

1. Open **AMD Xilinx Vivado**.
2. Create a new RTL project.
3. Open the [`design_source`](design_source/) folder in this repository.
4. Add the required Verilog source file(s) to the project.
5. Run RTL elaboration or synthesis.
6. Apply input combinations using a testbench or Vivado simulation controls.
7. Observe `Result` and `Sr` in the waveform window.

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
