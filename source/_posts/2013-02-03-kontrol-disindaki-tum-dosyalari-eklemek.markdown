---
layout: post
title: "Kontrol Dışındaki Tüm Dosyaları Eklemek"
date: 2013-02-03 18:58
comments: true
categories: [ Konfigürasyon ]
tags: [ git-config, git-alias ]
description: "Track edilmeyen dosyaları tek hareketle eklemek"
keywords: "git, git config, git add, git add untracked files"
# asides: []
---

    git status -sb | grep -e '^??' | awk '{ print $2 }' | xargs git add

<!-- more -->
Her seferinde bu uzun komutu yazmak yerine, hemen bir `alias` oluşturuyoruz.
`~/.gitconfig` dosyasını açarak ya da direk komut satırından;

    git config --global alias.add-untracked '!git status -sb | grep -e "^??" | awk "{ print $2 }" | xargs git add'

yapabilirsiniz. Bu işlemin ardından;

    git add-untracked

yapmanız mümkün!

{% render_partial _includes/global_links.markdown %}
