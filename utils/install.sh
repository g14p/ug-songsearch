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


