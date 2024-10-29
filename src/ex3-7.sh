#! /usr/bin/bash

#폴더 이름을 받기
FOLDER_NAME=$1

#폴더가 없으면 생성
if [ ! -d "$FOLDER_NAME" ]; 
then
    mkdir "$FOLDER_NAME"
else
    echo "$FOLDER_NAME 폴더가 이미 존재합니다."
fi

cd $FOLDER_NAME

#5개의 파일 생성
for i in {0..4}; do
    touch "$FOLDER_NAME$i.txt"
done


#하위 폴더 생성 / 링크 생성
for i in {0..4}; do
    SUBFOLDER="$FOLDER_NAME$i"

    #하위 폴더 생성
    if [ ! -d "$SUBFOLDER" ]; then
        mkdir "$SUBFOLDER"
    fi

    #링크 생성
    ln -s "../$FOLDER_NAME$i.txt" "$SUBFOLDER/$FOLDER_NAME$i.txt"
done
