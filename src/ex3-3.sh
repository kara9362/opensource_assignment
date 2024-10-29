#!/usr/bin/bash

weight=$1
height=$2

# cm에서 m로 변환
bmi=$(echo "scale=2; $weight / (($height / 100) * ($height / 100))" | bc)

if (( $(echo "$bmi < 18.5" | bc -l) )); 
then
    echo "저체중입니다."

elif (( $(echo "$bmi <= 23" | bc -l) )); 
then
    echo "정상 체중입니다."

else
    echo "과체중입니다."
fi