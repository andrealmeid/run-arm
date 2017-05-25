#!/bin/bash
rm -f tarefa$1.o tarefa$1
arm-none-eabi-linux-as -o tarefa$1.o tarefa$1.s
if [ -f tarefa$1.o ]; then
    arm-none-eabi-linux-ld -o tarefa$1 tarefa$1.o
    if [ -f tarefa$1 ] && [ "$2" != "-c" ]; then
        armsim -c -l tarefa$1
    fi
fi
