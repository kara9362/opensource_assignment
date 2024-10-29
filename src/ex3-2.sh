#! /usr/bin/bash

if [ $2 == '+' ]; #+입력 시
then
    echo $(expr $1 + $3)
elif [ $2 == '-' ]; #-입력 시
then
    echo $(expr $1 - $3)
else #그 이외 입력 시
    echo "잘못된 입력"
fi