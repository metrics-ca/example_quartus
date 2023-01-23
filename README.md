# example_quartus

This repository contains a simple RTL design and testbench for a carry-lookahead adder with the lpm_ver library from Intel PSG Quartus. It is used as an example in Metrics tutorials to help new users learn to use our tools.

The repository hierarchy looks like this:

```
                        example_quartus
           |                  |                           |
   SystemVerilog             VHDL                   VHDL_SystemVerilog
   |     |     |             |     |     |          |     |     |
design  sim  testbench   design  sim  testbench   design  sim  testbench
```
### SystemVerilog

- A Verilog implementation of the carry-lookahead adder RTL, with a SystemVerilog testbench.

### VHDL

- A VHDL implementation of the carry-lookahead adder RTL, with a VHDL testbench.

### VHDL_SystemVerilog

- A VHDL implementation of the carry-lookahead adder RTL, with a SystemVerilog testbench. 

The SystemVerilog, VHDL, and VHDL_SystemVerilog examples are meant to be simulated independently. All designs produce the same results. The same testbench is used in the SystemVerilog and VHDL_SystemVerilog examples.

Within each example:

### design

- Contains the synthesizable hardware description of the carry-lookahead adder (in VHDL or Verilog).

### testbench

- Contains behavioural code written to verify the operation of the adder circuit. The testbench is "self-checking", meaning that no external file or application is required to verify correct behaviour.

### sim

- Contains scripts which encapsulate the commands needed to run a simulation using the Metrics DSim Cloud. 
- Simulations should be launched from this directory so that simulation artifacts (logfile, waveform, etc.) will be written here.

For more information about Metrics products, please visit our website: <https://metrics.ca>
