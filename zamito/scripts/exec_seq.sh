#!/bin/bash
#Execute aqui pelo script.
#Parâmetros
# ./gol 128 128 1000 1 0.1
#        |   |    |  | |-> probabilidade da célula ser 1
#        |   |    |  |---> 1 grava em arquivo/0 não grava saída no arquivo
#        |   |    |------> passos de tempo
#        |   |-----------> largura
#        |---------------> altura

iterations=10

if [ $# -eq 1 ]; then
    iterations=$1
fi

time bin/gol_seq 4096 1024 $iterations 0 0.1 $(wc -l dataset/dataset.csv | grep -Eo '[0-9]{1,100}') < dataset/dataset.csv