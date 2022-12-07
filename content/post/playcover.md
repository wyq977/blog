---
title: "Play iOS games on Apple Silicon Macs"
date: 2022-12-07T12:03:07+02:00
categories:
    - Guide
    - Apple Silicon
---

## Genshin Impact (Yuanshen)

GenshinImpact with PlayCover on M1

Install PlayCover: https://playcover.io/

Keymap link: https://github.com/PlayCover/keymaps/tree/master/keymapping/com.miHoYo.GenshinImpact

iPA download: https://decrypt.day/

Change the `bundleIdentifier`:

From
```xml
	<string>com.miHoYo.GenshinImpact</string>
```

To
```xml
	<string>com.miHoYo.Yuanshen</string>
```
