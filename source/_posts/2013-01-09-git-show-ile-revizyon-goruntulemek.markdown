---
layout: post
title: "`git-show` ile Revizyon Görüntülemek"
date: 2013-01-09 01:49
comments: true
categories: [ Log ]
tags: [ git-show, browse ]
description: "İlgili revizyonu görüntülemek"
keywords: "git, git show, revision, git browse, browse revision"
# asides: []
---
Acaba **2 commit önceki** `index.html`‘in durumu neydi? Bunun için;

    git show REVISON:/path/to/file

kullanıyoruz.
<!-- more -->

    git show HEAD~2:index.html     # 2 commit önce
    git show HEAD~1:index.html     # son commit

Hatta aynı işlemi, **SHA** için de yapabiliriz. yani `42bc7e2` commit’indeki
durum neydi?

    git show 42bc7e2:index.html

İsterseniz daha da detaya inebilirsiniz;

    git show HEAD@{1.minute.ago}:index.html     # 1 dakika önce
    git show HEAD@{10.minutes.ago}:index.html   # 10 dakika önce
    git show HEAD@{1.month.ago}:index.html      # 1 ay önce

{% render_partial _includes/global_links.markdown %}
