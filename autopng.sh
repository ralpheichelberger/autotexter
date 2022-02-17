# /bin/bash
sed "s/PLACEHOLDER/${1}/" "$2" > "${1}.svg"
inkscape -D "${1}.svg" -o "${1}.png"
rm "${1}.svg"
