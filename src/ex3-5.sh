#! /usr/bin/bash

#ls 명령어를 실행하는 함수 정의
func() {
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어왔음"
    ls "$@"
    echo "프로그램을 종료합니다."
}

# 스크립트 실행 시 전달된 인자를 함수로 전달
func "$@"
