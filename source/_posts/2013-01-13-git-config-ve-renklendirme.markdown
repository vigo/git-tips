---
layout: post
title: "`git-config` ve Renklendirme"
date: 2013-01-13 16:23
comments: true
categories: [ Konfigürasyon, Log ]
tags: [ git-config, git-log, color ]
description: "Git ve renk ayarları"
keywords: "git, git config, color"
# asides: []
---
Renki log mesajları almak için `~/.gitconfig` dosyasında ayarlama yapmak
gerekiyor.
<!-- more -->

    [color]
        status = auto
        diff = auto
        branch = auto
        ui = auto

ya da;

    git config --global color.status auto
    git config --global color.diff auto
    git config --global color.branch auto
    git config --global color.ui auto

{% render_partial _includes/global_links.markdown %}
