#!/bin/sh

cat ./data/repositories_with_dependencies_romeo.csv | \
    tail -n +2 |  \
    sed 's/\"\[//g' | \
    sed 's/\]\"//g' | \
    cut -d "," -f 1,2,3 | \
    sed 's/,/ /g' | \
    shuf | \
    head -n9 | \
    xargs -L1 ./process/run.sh
