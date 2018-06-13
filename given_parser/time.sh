#!/bin/bash


time $( ./makeJava.sh)
for i in $( ls /home/asouv/Downloads/benchmarks/ ); do
    echo item: $i
    java MiniCompiler /home/asouv/Downloads/benchmarks/$i/$i.mini -stack > /home/asouv/Downloads/benchmarks/$i/$i.ll
    clang -m32 /home/asouv/Downloads/benchmarks/$i/$i.ll -o /home/asouv/Downloads/benchmarks/$i/e
    clang -m32 -O0 /home/asouv/Downloads/benchmarks/$i/$i.c -o /home/asouv/Downloads/benchmarks/$i/eO0
    clang -m32 -O3 /home/asouv/Downloads/benchmarks/$i/$i.c -o /home/asouv/Downloads/benchmarks/$i/eO3
    time /home/asouv/Downloads/benchmarks/$i/e < /home/asouv/Downloads/benchmarks/$i/input > /home/asouv/Downloads/benchmarks/$i/myout
    time /home/asouv/Downloads/benchmarks/$i/eO0 < /home/asouv/Downloads/benchmarks/$i/input > /home/asouv/Downloads/benchmarks/$i/myout
    time /home/asouv/Downloads/benchmarks/$i/eO3 < /home/asouv/Downloads/benchmarks/$i/input > /home/asouv/Downloads/benchmarks/$i/myout
    diff /home/asouv/Downloads/benchmarks/$i/myout /home/asouv/Downloads/benchmarks/$i/output
done 
