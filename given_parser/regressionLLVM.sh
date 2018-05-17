#!/bin/bash

$( ./makeJava.sh)
for i in $( ls /home/asouv/Downloads/benchmarks/ ); do
    echo item: $i
    $( java MiniCompiler /home/asouv/Downloads/benchmarks/$i/$i.mini -stack > regressionResults/regressionTest$i.ll)
    echo $(clang -m32 regressionResults/regressionTest$i.ll)
    $(clang -m32 regressionResults/regressionTest$i.ll)
done 
