#!/bin/bash
# Automated LJ_pot editing [20, 60]
low=$1;
upp=$((low + 10));
for i in $(seq $low $upp)
do
    #echo -e "\t\tRunning with N = $i"
    sed -i "s/^let N .*$/let N := $i;/g" modified_LJpot.mod
    ../../ampl_linux-intel64/ampl rebase.run
done
