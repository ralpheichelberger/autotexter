# /bin/bash
declare i=0

declare -a keys
while IFS= read -r keyword
do
    keys[$i]="${keyword}"
    i=$i+1
done < $3
cat "$2" | sed "s/KEYWORDS/${keys[0]} $1/" \
| sed "s/STORENAME/${keys[1]}/" \
| sed "s/FULLTITLE/${keys[2]} $1/" \
| sed "s/OCCASION/${keys[3]}/" > "$1.txt"
