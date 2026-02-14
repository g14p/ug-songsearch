# Ultimate Guitar Songsearch (for Terminal)

A combination of ddgr (DuckDuckgo CLI) and (ultimate-guitar-scraper)
such that you can quicky find a song 
to play it on your beloved instrument without opening a browser.

# Install
```$ ./utils/install.sh```

# Usage
```bash
$ ./ugss "Shiny happy people"
```
// duckduckgo-cli-version lists 5 results and lets you choose
// CHOOSE YOUR RESULT AS NUMBER!
```
$ 1
```
// duckduckgo calls the utils/get_chords.sh with the URL
// utils/get_chords.sh calls ultimate-guitar-scraper with the song id
// ultimate-guitar-scraper writes the lyrics in terminal - yey :)
```
[Intro]

| G | Em | Bm | C | G | Em | Bm | C |

(Then riff, or chords)

B     E        A
The lyrics to the song
```

# Known Issues
Error 202 in ddgr. 
Just run ```ddgr --noua sth``` and it will work the next time again :D
