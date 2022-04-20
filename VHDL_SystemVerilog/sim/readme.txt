To send a command to Aurora Verification Cloud, use 
> aurora execute '<your command>'

DSim supports different ways to compile and run a simulation.
Depending on your previous experience and preference, you can choose one of the following steps to achieve the same purpose.
Please refer to DSim User Guide for more information

Setup Quartus Precompiled Library, for example:
> aurora execute 'dsim_precompiled_library_setup --package quartus --ieee 1993'
Generally,
#dsim_precompiled_library_setup [-h] [-p {none,quartus,vivado}]
#                               [--work WORK_DIR] [--ieee {1993,2008}]
#                               [--dryrun]


Compile and Run Simulation
Since this is a mixed language environment, VHDL Design + Verilog Testbench, we must analyze separately, elaborate and run can be together or separate.
1. Analyze separately. Compile and Run in 1-step. 
> aurora execute 'dsim -genimage myimage -F filelist.txt +acc+b'
> aurora execute 'dsim -image myimage -waves waves.vcd'

2. Analyze separately, Elaborate and Run in 2-steps. These are perfect for "compile-once, run-many" simulations with different random seed flows.
> aurora execute 'dvlcom -F filelist.txt'
> aurora execute 'dsim -genimage myimage -top work.carry_lookahead_adder_tb +acc+b'
> aurora execute 'dsim -image myimage -waves waves.vcd'


Conclusion:
1. To send a command to Aurora Verification Cloud, use:
> aurora execute '<your command>'

2. There are different ways to compile and run a simulation using DSim. Please refer to the User Guide 

3. In Verilog/SystemVerilog, you need to specify the required library through -L <lib> switch.