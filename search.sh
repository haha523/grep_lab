#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <слово> <файл>"
    exit 1
fi

grep "$1" "$2" > results.txt
echo "Результаты поиска сохранены в results.txt"
