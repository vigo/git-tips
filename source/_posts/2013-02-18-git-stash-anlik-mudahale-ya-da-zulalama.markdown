---
layout: post
title: "`git stash` Anlık Müdahale ya da Zulalama"
date: 2013-02-18 22:30
comments: true
categories: [ Temel ]
tags: [ git-stash ]
description: "Tam işin ortasındasınız ve commit yapmak istemiyorsunuz. Değişikleri de kaybetmek istemiyorsunuz. Peki ne yapmak lazım?"
keywords: "git, git stash, git-stash"
# asides: []
---
Tam işin ortasındasınız ve aniden acil bir durumla karşılaştınız. Bir çok
dosyayı da değiştirdiniz ama `commit` etmek istemiyorsunuz. Ne yapacaksınız?
<!-- more -->

İşte `git stash` burada devreye giriyor. Yapmanız gereken:

    git stash save

ve

    Saved working directory and index state WIP on master: 423eaf4 init
    HEAD is now at 423eaf4 init

gibi bir mesaj göreceksiniz. `ls -al` ile directory’e baktığınızda, eklediğiniz
ama `commit` etmediğiniz dosyaları göremeyeceksiniz. Sakın paniklemeyin.
Bu dosyalar artık **ZULA**’da yani `stash`de...

Çalışmaya devam edin, işlerinizi tamamlayın ve kaldığınız yere gere dönmek
için:

    git stash pop

yapmanız yeterli.

{% render_partial _includes/global_links.markdown %}


