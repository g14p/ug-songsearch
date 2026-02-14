#!/bin/bash
echo "scraper called from $(pwd)"
WORKDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $WORKDIR 
url=$1
echo $url 
if [[ "$url" =~ ([0-9]{2,16})$ ]]; then
    echo "Song ID: ${BASH_REMATCH[1]}"
    id=${BASH_REMATCH[1]} 
else
    echo "Invalid URL"
    exit 1
fi

if [ -f ../songs/latest.txt ]; then echo overwrite latest song..; 
else 
    install -Dv /dev/null ../songs/latest.txt; 
fi
echo -e "\033[44m Close ddgr with q and your song will be displayed."
../ultimate-guitar-scraper/ultimate-guitar-scraper f --id ${id} >> ../songs/latest.txt

