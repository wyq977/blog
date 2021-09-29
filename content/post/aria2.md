---
title: "Set up Aria2 and Chrome working nicely together"
date: 2021-09-29T15:45:07+02:00
categories:
    - Guide
---

## Install

```
brew install aria2
```

1. [YAAW, aria2 frontend for chrome](https://chrome.google.com/webstore/detail/yaaw-for-chrome/dennnbdlpgjgbcjfgaohdahloollfgoc/related)
2. Install [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo?hl=en)
3. [fake115](https://github.com/kkHAIKE/fake115), open raw link of this file [fake115d.user.js](https://github.com/kkHAIKE/fake115/raw/master/fake115d.user.js), should auto redirect to Tampermonkey
4. [115](https://github.com/acgotaku/115), download release, change `crx` to `zip`, drag it in **Extensions** in Chrome

## Aria2 config

Help: https://developpaper.com/how-to-configure-aria2-to-download-files/

## YYAW config

Set the RPC like this:

```
http://token:TOKEN@localhost:6800/jsonrpc
```

## Run aria2 in background on startup

TBD

## Convert rmvb to mp4

See: https://gist.github.com/jamesmacwhite/58aebfe4a82bb8d645a797a1ba975132

```
for f in *.rmvb; do ffmpeg -i "$f" -c:a copy -acodec copy "${f%}.mp4"; done
# use filename only
for f in *.rmvb; do ffmpeg -i "$f" -c:a copy -acodec copy -map_metadata -1 -map 0 "${f%%.rmvb}.mp4"; done 
```

Remove all metadata along the way:

```
ffmpeg -i in.mkv -map_metadata -1 -c copy -map 0 out.mkv
for f in *.mp4; do ffmpeg -i "$f" -map_metadata -1 -c copy -map 0 "${f%}.nometa.mp4"; done # do for loop
```
