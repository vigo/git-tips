---
layout: post
title: "Modifiye Edilmiş Tüm Dosyaları Eklemek"
date: 2013-02-03 19:10
comments: true
categories: [ Konfigürasyon ]
tags: [ git-config, git-alias ]
description: "Tek hareketle modifiye edilen dosyaları eklemek"
keywords: "git, git config, git add, git add modified files"
# asides: []
---

    git status -sb | grep -e "^ M " | awk "{ print $2 }" | xargs git add
<!-- more -->

Hemen `alias` oluşturalım:

    git config --global alias.add-modified '!git status -sb | grep -e "^ M " | awk "{ print $2 }" | xargs git add'

Bu işlemin ardından;

    git add-modified

yapabiliriz.

{% render_partial _includes/global_links.markdown %}
