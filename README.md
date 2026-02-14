# Ultimate Guitar Songsearch (for Terminal)

A combination of ddgr (DuckDuckgo CLI) and (ultimate-guitar-scraper)
such that you can quicky find a song 
to play it on your beloved instrument without opening a browser.

# Install
$ ./utils/install.sh

# Usage
$ ./ugss "Shiny happy people"

... -> duckduckgo-cli-version lists 5 results and lets you choose

.... CHOOSE YOUR RESULT AS NUMBER!
... -> duckduckgo calls the utils/get_chords.sh with the URL

... -> utils/get_chords.sh calls ultimate-guitar-scraper with the song id

ultimate-guitar-scraper writes the lyrics in terminal - yey :)
