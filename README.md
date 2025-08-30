🔢 2-Digit BCD Adder
📖 About the Project

This project implements a 2-Digit BCD (Binary Coded Decimal) Adder using Verilog HDL. It demonstrates how two multi-digit decimal numbers can be added in BCD format with proper correction logic to ensure valid decimal outputs. The design extends a 1-digit BCD adder into a 2-digit system and is verified through testbenches and simulations.


✨ Features

Modular design (1-digit BCD adder cascaded into 2-digit system)

Verilog/HDL implementation with clean code structure

Testbench for functional verification

Simulation waveforms for validation

Beginner-friendly explanation and documentation

⚙️ How It Works

Each 1-digit BCD adder performs decimal addition with correction logic (adding 0110 when result > 9).

Two 1-digit adders are cascaded to form the 2-digit adder.

Carry output from the first digit is forwarded to the second digit adder.

The final result is represented in valid BCD format.

📊 Applications

Digital calculators

Microprocessor/microcontroller arithmetic units

Digital systems requiring decimal operations

VLSI design learning and practice

🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to fork this repo and submit pull requests.
