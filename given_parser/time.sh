#!/bin/bash


$( ./makeJava.sh)
for i in $( ls ./benchmarks/ ); do
    echo item: $i
    java MiniCompiler ./benchmarks/$i/$i.mini -stack > ./benchmarks/$i/$i.ll
    clang -m32 ./benchmarks/$i/$i.ll -o ./benchmarks/$i/e
    clang -m32 -w -O0 ./benchmarks/$i/$i.c -o ./benchmarks/$i/eO0
    clang -m32 -w -O3 ./benchmarks/$i/$i.c -o ./benchmarks/$i/eO3
    echo Timing our compiled code....
    time ./benchmarks/$i/e < ./benchmarks/$i/input > ./benchmarks/$i/myout
    diff ./benchmarks/$i/myout ./benchmarks/$i/output
    echo Timing clang -O0 code....
    time ./benchmarks/$i/eO0 < ./benchmarks/$i/input > ./benchmarks/$i/o0out
    diff ./benchmarks/$i/o0out ./benchmarks/$i/output
    echo Timing clang -O3 code....
    time ./benchmarks/$i/eO3 < ./benchmarks/$i/input > ./benchmarks/$i/o3out
    diff ./benchmarks/$i/o3out ./benchmarks/$i/output
done 
