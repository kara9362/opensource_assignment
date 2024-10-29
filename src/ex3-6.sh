#!/usr/bin/bash

#폴더 이름 받기
FOLDER_NAME=$1

#폴더 없으면 생성
if [ ! -d "$FOLDER_NAME" ]; then
    mkdir "$FOLDER_NAME"
else
    echo "$FOLDER_NAME 폴더가 이미 존재합니다."
fi

#폴더로 이동
cd "$FOLDER_NAME"

#파일 생성
for i in {0..4}; do
    touch "${FOLDER_NAME}${i}.txt"
done

# #파일 압축
# tar -cvf "${FOLDER_NAME}.tar" "${FOLDER_NAME}"*.txt

#압축 해제할 새로운 폴더 생성
NEW_FOLDER="${FOLDER_NAME}"
if [ ! -d "$NEW_FOLDER" ]; then
    mkdir "$NEW_FOLDER"
fi

#파일 압축
tar -cvf "${FOLDER_NAME}.tar" "${FOLDER_NAME}"*.txt

#새 폴더에 압축 해제
tar -xvf "${FOLDER_NAME}.tar" -C "$NEW_FOLDER"

mv /home/younha/src/$FOLDER_NAME/$FOLDER_NAME.tar /home/younha/src/$FOLDER_NAME/$FOLDER_NAME/$FOLDER_NAME.tar
