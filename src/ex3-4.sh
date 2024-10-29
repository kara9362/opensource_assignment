#! /usr/bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
    "yes" | "Y" | "Yes" )
        echo "Yes" 
    ;;

    "no" | "N" | "No" )
        echo "No" 
    ;;

    *yes*)
        echo "Yes"
        ;;

    *no*)
        echo "No"
        ;;

    * )
        echo "yes 혹은 no로 입력해주세요." 
    ;;
esac