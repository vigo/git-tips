---
layout: post
title: "`rm` ile Silinen Dosyaların Tümünü `git`'e Eklemek"
date: 2013-01-09 01:57
comments: true
categories: [ Temel ]
tags: [ git-add ]
description: "rm ile Silinen Dosyaların Tümünü git'e Eklemek"
keywords: "git, git rm, git add all deleted files"
# asides: []
---

    git add -u

<!-- more -->

Dosya silerken bazen `git rm` yapmadan `rm` yaptığınız oluyordur. Eğer
sildiğiniz dosya sayısı çoksa; örneğin `pictures/` altındaki tüm `*.jpg`‘leri
sildiniz, bunları tek tek `git rm` yapmak çok sıkıcı ve zaman alıcıdır.

{% render_partial _includes/global_links.markdown %}
