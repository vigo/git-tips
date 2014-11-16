---
layout: post
title: "`git-log` ve `less` ile İlgili Sorun"
date: 2013-01-14 01:08
comments: true
categories: [ Log, Konfigürasyon ]
tags: [ git-log, format, color ]
description: "Git ve Unix komutu less arasında bazen sorun olabiliyor!"
keywords: "git, git log, unix, less"
# asides: []
---

Renkli log çıktılarında ilk satırı görmüyor ya da kaybediyorsanız bu
sistemdeki `less` komutunun konfigürasyonu ile ilgilidir. Bunu düzeltmek için
`~/.gitconfig` dosyasında `core.pager` bölümüne müdahale etmek gerekir:
<!-- more -->

    [core]
        pager = less -FRX

ya da direk komut satırından da yapabilirsiniz:

    git config --global core.pager "less -FRX"

hatta `less` yerine `cat` kullanabilirsiniz. Aslında istediğiniz herhangi
bir **unix** komutunu kullanabilirsiniz.

    git config --global core.pager cat

{% render_partial _includes/global_links.markdown %}
