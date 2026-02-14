echo we will install requirements. You need to run this with sudo. Okay?
echo Requirements: ultimate-guitar-scraper, golang, ddgr
echo "(y or n)"

read consent
if [ $consent == "y" ]  then 
    git clone https://github.com/Pilfer/ultimate-guitar-scraper.git 
    cd ultimate-guitar-scraper 
    sudo apt install golang
    go build
    sudo apt install ddgr
else 
    exit 1; 
fi

echo to make an alias 'ugss' and reach ug-songsearch from every terminal window type: 
echo "(y / n)"

read consent
if [ $consent == "y" ]  then 
    echo 'alias ugss="~/git/ug-songsearch/ugss $@"' >> ~/.bashrc
else 
    echo "making no alias. You can call it from the gitfolder as well :)"
    exit 0; 
fi


