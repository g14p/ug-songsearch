#!/bin/bash
echo "scraper called from $(pwd)"
WORKDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $WORKDIR 
echo ls  && ls
url=$(cat ../tmpurl)
url=${url:19:999}
if [[ $@ != "" ]]; then
    url=$@
    echo overwrote tmpurl information with url passed to script
fi
echo ---------------------------------------
echo "'${url}' is our raw URL in scaper land "
echo ---------------------------------------
if [[ "$url" =~ [0-9]{2,16} ]]; then
    
    echo "Song ID: ${BASH_REMATCH[0]}"
    echo "Song ID: ${BASH_REMATCH[1]}"
    echo "Song ID: ${BASH_REMATCH[2]}"
    id=${BASH_REMATCH[0]} 
else
    echo "Invalid URL"
    echo -e "\033[32m this is not okay: \033[0m ${url}"
    exit 1
fi

if [ -f ../songs/latest.txt ]; then 
    echo overwrite latest song.. 
    rm ../songs/latest.txt
else 
    install -Dv /dev/null ../songs/latest.txt; 
fi
echo -e "\033[44m Close ddgr with q and your song will be displayed. \033[0m"
../ultimate-guitar-scraper/ultimate-guitar-scraper f --id ${id} > ../songs/latest.txt

