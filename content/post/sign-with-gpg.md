---
title: "Sign With GPG"
date: 2020-12-31T09:41:52+01:00
categories:
    - Guide
tags:
    - git 
---

## Motivation

Came across this signing in [dotfiles](https://github.com/alrra/dotfiles) and I would also want to have the verified in each commit I made in my pc so why not?

## How-to

1. Install [GPG Suite](https://gpgtools.org/) as it allows storing in macOS keychain, without typing each time
    * `brew install --cask gpg-suite`
    * Don't install `gpg` or `pinentry-mac` as it might cause conflict and also can not be stored in keychain
2. Create a key either from [CLI](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-gpg-key) or in GPG Keychain app
    * Noted the name and email should be the same as the git configure
3. Specify location for git
    * In `~/.gitconfig.local`: modify as below
4. [Adding a new GPG key to your GitHub account](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-gpg-key-to-your-github-account)

```ini
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgsign = true


[user]

    name = 
    email = 
    signingkey = 
    # signkey
    # See https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/telling-git-about-your-signing-key

# Tell git about gpg path
# https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65
# https://github.com/pstadler/keybase-gpg-github
[gpg]
	program = /usr/local/MacGPG2/bin/gpg2
```
