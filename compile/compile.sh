#!/bin/bash

rm -rf obj_dir && \
verilator --binary /Volumes/main/learn/verilog/HDLbits/src/${1}.v \
    --top $2 --Wno-WIDTHTRUNC --language 1364-2005

# verilator --binary /Volumes/main/learn/verilog/HDLbits/src/${1}.v --top $2 --Wno-WIDTHTRUNC
