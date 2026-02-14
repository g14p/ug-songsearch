#!/bin/bash
url=$1
echo $url 
if [[ "$url" =~ ([0-9]{2,8})$ ]]; then
    echo "Domain name: ${BASH_REMATCH[1]}"
    id=${BASH_REMATCH[1]} 
else
    echo "Invalid URL"
    exit 1
fi

echo "song id is: ${id} i think."
if [ -f songs/latest.txt ]; then echo overwrite latest song..; else touch songs/latest.txt; fi
echo -e "\033[44m Close ddgr with q and your song will be displayed."
rm songs/latest.txt
../ultimate-guitar-scraper/ultimate-guitar-scraper f --id ${id} >> songs/latest.txt

