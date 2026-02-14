# Ultimate Guitar Songsearch for Terminal -> (ugss) 🎸

A combination of ddgr (DuckDuckgo CLI) and (ultimate-guitar-scraper)
such that you can quicky find a song 
to play it on your beloved instrument without opening a browser.

## Install


Running install script should now setup everything if you give sudo access.
```bash
$ ./utils/install.sh
```

## Usage in Select mode

```bash
$ ugss --select "Shiny happy people"
```
* duckduckgo-cli-version lists 5 results and lets you choose
* CHOOSE YOUR RESULT AS NUMBER!
* but in select mode more is possible:
    * select mode is actually just internally calling the duckduckgo terminal application ddgr
    * this applicytion allows you to press "n" and "p" to browse the search results
    * and confirm with the search result number which is 1,2,3,4 or 5 in our case.
        * quitting ddgr is done with `q` and `ENTER` 
* Lets say you choose search result 1

```
$ 1
```
* duckduckgo calls the utils/get_chords.sh with the URL
* utils/get_chords.sh calls ultimate-guitar-scraper with the song id
* ultimate-guitar-scraper writes the lyrics in terminal - yey :)
```
[Intro]

| G | Em | Bm | C | G | Em | Bm | C |

(Then riff, or chords)

B     E        A
The lyrics to the song
```
# Automated Usage (Selects always first link)
```bash
ugss "your song name"
```
# Known Issues
Error 202 in ddgr. 

Just run ```ugss --repair`` and it will work the next time again :D


# Disclaimer
This software's purpose is purely educational. I am not responsible for how you use this package. This repository and all others associated with it are not affiliated with, authorized, or endorsed by Ultimate-Guitar.com.

