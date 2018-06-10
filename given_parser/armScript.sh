#!/bin/bash

$( ./makeJava.sh)
for i in $( ls /home/asouv/Downloads/benchmarks/ ); do
    echo item: $i
    java MiniCompiler /home/asouv/Downloads/benchmarks/$i/$i.mini -arm > /home/asouv/Downloads/benchmarks/$i/$i.S
    gcc /home/asouv/Downloads/benchmarks/$i/$i.S -o /home/asouv/Downloads/benchmarks/$i/arm
    /home/asouv/Downloads/benchmarks/$i/arm < /home/asouv/Downloads/benchmarks/$i/input > /home/asouv/Downloads/benchmarks/$i/myoutARM
    diff /home/asouv/Downloads/benchmarks/$i/myoutARM /home/asouv/Downloads/benchmarks/$i/output
done 
