---
layout: post
title: "Daha Detaylı `git-branch`"
date: 2013-01-06 22:03
comments: true
categories: [ Branch ]
tags: [ git-branch ]
description: "Daha detaylı branch görüntülemek"
keywords: "git, git branch"
# asides: []
---
Local'deki ve Remote'daki yani varolan tüm **branch**'leri göstermek için;

    git branch -a

kullanıyoruz. Fakat daha detaylı bilgi almak için;

    git branch -av

<!-- more -->

yapabiliriz. Bu sayede hem **revizyon** (*SHA*) hem de **commit** mesajını
görebiliriz.

[{% img center http://25.media.tumblr.com/bf24ca515dab2412665d1643a9b7fdb6/tumblr_mgl8mbqiR01s3r5wmo1_1280.png %}][big]  

`alias` olarak eklemek için;

    git config --global alias.br "branch -v"
    git config --global alias.bra "branch -av"

`git br` ve `git bra` şeklinde kullanabilirsiniz.

{% render_partial _includes/global_links.markdown %}

[big]: http://25.media.tumblr.com/bf24ca515dab2412665d1643a9b7fdb6/tumblr_mgl8mbqiR01s3r5wmo1_1280.png