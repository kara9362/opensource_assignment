#! /usr/bin/bash

#변수에 저장
name=$1

#DB.txt에서 이름을 검색하여 출력
grep "$name" DB.txt