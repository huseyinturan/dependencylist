DIR=$1

grepCmd=""

while read -r ignored; do

    echo "$ignored"

    grepCmd="$grepCmd!/$ignored/ &&"
done < ignore_packages.txt

cd $DIR

grepCmd="grep -hr import | sort | uniq | awk '${grepCmd} !/${PWD##*/}/'"
echo $grepCmd
eval $grepCmd

