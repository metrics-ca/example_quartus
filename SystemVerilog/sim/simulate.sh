#!/bin/bash

# Design is using LPM library from intel.
# Need to map the precompiled library
#dlib -work dsim_work map -lib lpm_ver $QUARTUS_HOME/dsim_precompiled/verilog
# OR,
# Recommended: Use the helper script to setup

#dsim_precompiled_library_setup [-h] [-p {none,quartus,vivado}]
#                               [--work WORK_DIR] [--ieee {1993,2008}]
#                               [--dryrun]
dsim_precompiled_library_setup --package quartus --ieee 1993

# Compile and run simulation
dsim -F filelist.txt -L lpm_ver +acc+b -waves waves.vcd 
