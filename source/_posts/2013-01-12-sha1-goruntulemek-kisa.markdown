---
layout: post
title: "SHA1 Görüntülemek (kısa)"
date: 2013-01-12 23:12
comments: true
categories: [ Log ]
tags: [ rev-parse ]
description: "SHA1 Görüntülemek (kısa)"
keywords: "git, sha, short sha, git log"
# asides: []
---
İçinde bulunduğunuz `branch`’in en son revizyonuna ait kısa **SHA1**‘ini
görüntülemek için;

    git rev-parse --short HEAD

<!-- more -->
Eğer uzun halini görmek isterseniz;

    git rev-parse HEAD

Eğer `HEAD` yerine başka bir versionu görmek isterseniz;

    git rev-parse --short HEAD~4
    git rev-parse --short HEAD@{1.month.ago}   # 1 ay önce

{% render_partial _includes/global_links.markdown %}
