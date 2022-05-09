---
title: "Video Stuff"
date: 2021-10-03T16:25:14+02:00
---

## Quality for video downloads

Ref: https://wiki.servarr.com/sonarr/settings#qualities-defined

**In brief:** Remux == Bluray > WEBDL > WEBRip > HDTV

Summary:
1. WEBDL: losslessly ripped from streaming like NF, AMZN, HULU or iTunes. Quality is quite good since they are not reencoded. The video (H.264 or H.265) and audio (AC3/AAC) streams are usually extracted from the iTunes or Amazon Video and remuxed into a MKV container without sacrificing quality.
2. WEBRip: the file is often extracted using the HLS or RTMP/E protocols and remuxed from a TS, MP4 or FLV container to MKV. Usually WEB-DL is better
3. Bluray: A re-encode of the final released Blu-ray
4. Remux: a rip of a Blu-ray or HD DVD disc to another container format or just stripping the disc of menus and bonus material while keeping the contents of its audio and video streams intact (also keeping the current codecs), guaranteeing the exact 1:1 movie quality as on original disc.
5. HDTV:  A re-encode of the final released Blu-ray, but broadcast over HD cable or satellite. This is released usually several months after a retail release, but sometimes upscaled versions of a Standard Definition film are released on cable channels such as STARZ or HBO, and they would be the only HD copies of that specific film available. These are generally MKV or MP4 container.

Quality: High -> Low

* 2160p
    * `Remux-2160p`, `Bluray-2160p`, `WEBRip-2160p`, `WEBDL-2160p`
* 1080p
    * `Remux-1080p`, `Bluray-1080p`, `WEBRip-1080p`, `WEBDL-1080p`, `HDTV-1080p`
* 720p
    * `Bluray-720p`, `WEBRip-720p`, `HDTV-720p`
* 480p or lower
    * `DVD`, `WEBRip-480p`, `WEBDL-480p`

## Info. about media files

MKV or MP4: just a container, does not really say a lot about quality, can be converted with `ffmepg` or mkvtoolnix

TS: video format is a container format for MPEG, known as "Transport Stream", which is used most frequently by digital broadcasting systems (digital cable, satellite, etc). [ref](https://askubuntu.com/a/10596)

