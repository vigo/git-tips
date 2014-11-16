---
layout: post
title: "Kısa ve Öz `git-log`"
date: 2013-01-13 01:41
comments: true
categories: [ Log ]
tags: [ git-log, git-status, short-status ]
description: "Git’de en kısa şekilde log’a bakmak"
keywords: "git, git status, git short status"
# asides: []
---

    git log --graph --decorate --oneline

<!-- more -->

Bunu `alias` yapabilirsiniz. İster `~/.gitconfig` dosyasını düzenleyin
ister komut satırından ekleyin.

    git config --global alias.logs "log --graph --decorate --oneline"

Bu şekilde `git logs` yaparak kullanabilirsiniz.

[{% img center http://24.media.tumblr.com/0cf92e4d880c7afe32ae4bf241a79a52/tumblr_mgl8awQMpn1s3r5wmo1_1280.png %}][big]  

{% render_partial _includes/global_links.markdown %}


[big]: http://24.media.tumblr.com/0cf92e4d880c7afe32ae4bf241a79a52/tumblr_mgl8awQMpn1s3r5wmo1_1280.png