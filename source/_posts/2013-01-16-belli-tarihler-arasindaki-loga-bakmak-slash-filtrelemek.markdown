---
layout: post
title: "Belli Tarihler Arasındaki Log'a Bakmak / Filtrelemek"
date: 2013-01-16 11:18
comments: true
categories: [ Log ]
tags: [ git-log, filtre ]
description: "Git’de belli tarih aralığındaki log’a bakmak"
keywords: "git, git log, filter git log"
# asides: []
---
**Eylül 2012** ile **Ekim 2012** arasındaki commit log’u görmek için:

    git log --since="2012-09-01" --until="2012-10-01" --reverse --format="%ad | %h : %s" --date=short

<!-- more -->

`-—since`  
Tarihinden itibaren anlamında. Tarih format **YIL-AY-GÜN** şeklinde. Yani
**1 Eylül 2012** tarihinden itibaren...

`--until`  
Tarihine kadar. Yani **1 Ekim 2012** tarihine kadar.

`--reverse`  
Git, logu gösterirken sondan başa yani en son commit’den başa doğru gösterir.
`--reverse` ile bunu terse çeviriyoruz yani ilkten sona doğru.

`--format`  
Çıktının formatını belirliyoruz. [Daha önceki][ppost] yazıda format ile
ilgili detaylı bilgiler bulunuyor.

    %ad : --date'de verilen formata uygun olarak "Author Date"
    %h  : Kısa SHA1
    %s  : Commit mesajı

`--date`  
Tarihin nasıl görüneceğini buradan ayarlıyoruz. Seçeneklerimiz:

    relative : "2 hours ago"
    local    : "Tue Sep 4 23:57:50 2012" (Tarih ayarınıza göre)
    default  : "Tue Sep 4 23:57:50 2012 +0300"
    iso      : "2012-09-04 23:57:50 +0300"
    rfc      : "Tue, 4 Sep 2012 23:57:50 +0300"
    short    : "2012-09-04"
    raw      : "1346792270 +0300"

[Örnek Proje][sample] çıktısı:

    2012-09-04 | 495740f : screen status display for prompt shell
    2012-09-05 | 205e566 : screen_status script small fix
    2012-09-05 | ab5a9cb : color removed from screen status
    2012-09-07 | 25e69c4 : git_add_untracked alias for adding untracked files -git-
    2012-09-12 | 5bb659f : screen_status.rb fix
    2012-09-12 | 09870a6 : screen_status.rb fix for private screen tab completion
    2012-09-12 | f30410b : when screen is active, promps sty name
    2012-09-28 | 39010e3 : up
    2012-09-29 | 2ae0924 : screenrc config
    2012-09-30 | 9b4ba71 : git_add_modified_only alias fix

{% render_partial _includes/global_links.markdown %}

[ppost]: /ipucu/2013/01/14/git-log-ciktisini-formatlamak/