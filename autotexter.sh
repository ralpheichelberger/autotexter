#!/bin/bash
if [ "$#" -ne 4 ] 
    then 
    echo "usage:"
    echo "  autotexter.sh <SVG> <TXT1> <TXT2> <TXT3>"
    echo "      SVG File with the design"
    echo "      TXT1 File with the description template"
    echo "      TXT2 File with the description keywords"
    echo "      TXT3 File with the list of topics"
    exit
fi

while IFS= read -r line
do
    line=$(echo ${line} | tr '[:lower:]' '[:upper:]')
    dir=$(echo ${line%%*( )} | tr ':blank: ' '_')
    mkdir "out/${dir}"
    cd "out/${dir}"
    bash ../../autopng.sh "${line}" "$1"
    bash ../../autodescriptor.sh "${line}" "$2" "$3"
    cd ../..
done < "$4"
