---
layout: post
title: "Sayfalama (Paging) Yapmadan Tüm Log'u Almak"
date: 2013-01-16 11:25
comments: true
categories: [ Log ]
tags: [ git-log ]
description: "Sayfalama ya da paging yapmadan tüm log’u görüntülemek"
keywords: "git, git log, git log without paging"
# asides: []
---

    git --no-pager log --oneline

<!-- more -->

Eğer log alırken `--no-pager` kullanırsanız tüm log’u biranda almış
olursunuz.

{% render_partial _includes/global_links.markdown %}
