#! /usr/bin/bash

if [ -z "$1" ]; #공백 입력 시
then
    while true; do
        echo "Hello World" #무한반복
    done
else
    for (( i=0; i<$1; i++)); do
        echo "Hello World" #아니면 입력횟수만큼 반복
    done
fi

