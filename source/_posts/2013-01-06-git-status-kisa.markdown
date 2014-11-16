---
layout: post
title: "`git-status` Kısa ve Öz"
date: 2013-01-06 18:06
comments: true
categories: [ Temel ]
tags: [ git-status ]
description: "Kısa ve öz git-status"
keywords: "git, git status, git st"
# asides: []
---

    git config --global alias.sts "status -sb"

<!-- more -->

[{% img center http://24.media.tumblr.com/061c6e90c8a3298170d4f7555145169e/tumblr_mgl8s8Z8j31s3r5wmo1_1280.png %}][big]  

Eğer işlemi elle yapmak isterseniz, `~/.gitconfig` dosyasına;

    [alias]
        sts = status -sb

ekleyebilirsiniz. Daha sonra da; `git sts` şeklinde kullanabilirsiniz.

{% render_partial _includes/global_links.markdown %}

[big]: http://24.media.tumblr.com/061c6e90c8a3298170d4f7555145169e/tumblr_mgl8s8Z8j31s3r5wmo1_1280.png