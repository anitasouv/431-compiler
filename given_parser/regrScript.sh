#!/bin/bash

$( ./makeJava.sh)
for i in $( ls ./benchmarks/ ); do
    echo item: $i
    java MiniCompiler ./benchmarks/$i/$i.mini -stack > ./benchmarks/$i/$i.ll
    clang -m32 ./benchmarks/$i/$i.ll -o ./benchmarks/$i/e
    echo \      checking normal input...
    ./benchmarks/$i/e < ./benchmarks/$i/input > ./benchmarks/$i/myout
    diff ./benchmarks/$i/myout ./benchmarks/$i/output
    echo \      checking longer input...
    ./benchmarks/$i/e < ./benchmarks/$i/input.longer > ./benchmarks/$i/myout
    diff ./benchmarks/$i/myout ./benchmarks/$i/output.longer
done 
