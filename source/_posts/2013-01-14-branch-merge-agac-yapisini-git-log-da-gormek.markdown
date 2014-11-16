---
layout: post
title: "Branch / Merge ağaç yapısını `git-log` da görmek"
date: 2013-01-14 01:17
comments: true
categories: [ Log, Branch ]
tags: [ git-log, git-branch ]
description: "Git’de branch-merge ağaç yapısını görmek"
keywords: "git, git log, git branch, git merge, graph"
# asides: []
# published: false
---
Yapmanız gereken sadece komut içinde `--graph` kelimesi kullanmak. Son
**10 commit**’i belirlediğim formatta `--graph` ile göster
(*önceki örneklerden*):
<!-- more -->

    git log -10 --pretty=format:'%Cblue%h%Creset %Cgreen%an%Creset %s (%Cred%ar%Creset)' --graph

[{% img center http://25.media.tumblr.com/2d220499f7a1bef11a84b461c4bb610e/tumblr_mgl7ukFYIJ1s3r5wmo1_1280.png %}][big]  


{% render_partial _includes/global_links.markdown %}

[big]: http://25.media.tumblr.com/2d220499f7a1bef11a84b461c4bb610e/tumblr_mgl7ukFYIJ1s3r5wmo1_1280.png