url=https://www.ultimate-guitar.com/collections/1022427/
    https://www.ultimate-guitar.com/collections/1022427/
echo chieck url : ${url}
if [[ "$url" =~ [0-9]{2,16} ]]; then
    echo "Song ID: ${BASH_REMATCH[0]}"
    echo "Song ID: ${BASH_REMATCH[1]}"
    echo "Song ID: ${BASH_REMATCH[2]}"
    id=${BASH_REMATCH[1]} 
fi

