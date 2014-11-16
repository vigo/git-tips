---
layout: post
title: "Track edilen branch"
date: 2014-11-16 12:55
comments: true
categories: [ branch ]
tags: [ branch ]
description: "Track edilen branch’i görmek..."
keywords: "branch, track"
# asides: []
---

    git branch -vv

<!-- more -->

`push` ettiğiniz yeri `--set-upstream-to=` ile takip edersiniz, ya da ilk
push’u yaparken `git push -u origin master` gibi `-u` kullanarak track edilecek
branch’i belirlersiniz.

Takip ettiğiniz branch’i unuttuğunuzda yardıma `-vv` koşar :) `git branch -vv`
size nereyi takip ettiğiniz söyler!

    * master b85437d [origin/master] README.md

{% render_partial _includes/global_links.markdown %}
