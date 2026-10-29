# 🔢 Calc Type 2 — Sign-Magnitude Calculator

## 📌 About the Project

Calc Type 2 is a combinational calculator designed using **Verilog HDL** and AMD Xilinx Vivado. It performs addition, subtraction, multiplication, and division on 4-bit magnitude inputs with separate sign bits.

This project helped me practice RTL design, arithmetic logic, sign handling, and simulation in Vivado.

## ⚙️ Supported Operations

| `op[1:0]` | Operation |
|:---:|---|
| `00` | Addition |
| `01` | Subtraction |
| `10` | Multiplication |
| `11` | Division |

## 🔌 Inputs & Outputs

| Signal | Description |
|---|---|
| `Enb` | Enables or disables the calculator |
| `A[3:0]`, `B[3:0]` | Operand magnitudes |
| `Sa`, `Sb` | Operand sign bits |
| `op[1:0]` | Operation selector |
| `Result[7:0]` | Result magnitude |
| `Sr` | Result sign |

**Sign convention:** `0` = Positive, `1` = Negative.

## 💻 Verilog Source Code

- [`calc_type2.v`](calc_type2.v) — Main RTL module.

## 🧪 Simulation & Verification

The design was manually simulated in Vivado by applying different input combinations and checking the output waveforms.

Test cases covered arithmetic operations, sign handling, zero results, maximum input values, division by zero, and enable/disable behavior.

### Simulation Waveform

[📈 View Simulation Waveform](images/calc_type2_waveform.png)

![Simulation Waveform](images/calc_type2_waveform.png)

## 📊 RTL Schematic

The RTL schematic provides a visual representation of the hardware structure inferred from the Verilog code.

[🔗 View RTL Schematic](images/calc_type2_schematic.png)

![RTL Schematic](images/calc_type2_schematic.png)

*Note: Add the actual Vivado screenshots to the `images` folder for these links to work.*

## 🚀 How to Run

1. Open AMD Xilinx Vivado.
2. Create an RTL project.
3. Add `calc_type2.v` as a design source.
4. Run RTL elaboration or synthesis.
5. For simulation, use Vivado Tcl/Force commands or a testbench to apply input values.
6. Observe `Result` and `Sr` in the waveform window.

## 🛠️ Tools Used

- Verilog HDL
- AMD Xilinx Vivado
- Vivado Simulator
- Git and GitHub

## 📚 References

- [AMD Vivado Design Suite](https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html)
- [Vivado Simulation Guide](https://docs.amd.com/r/en-US/ug900-vivado-logic-simulation)
- [GitHub Markdown Guide](https://docs.github.com/en/get-started/writing-on-github)

## 🎓 What I Learned

- Designing combinational circuits using Verilog.
- Implementing sign-magnitude arithmetic.
- Debugging RTL and analyzing simulation waveforms.
- Using Vivado for RTL development and verification.

---

**Author:** Anuj Bansal

*An ECE/VLSI learning project focused on digital design and Verilog RTL development.*
