---
layout: post
title: "Obje ile İlgili Detaylı Bilgi Almak"
date: 2013-01-12 23:47
comments: true
categories: [ Detay ]
tags: [ cat-file ]
description: "git objesi ile ilgili detaylı bilgi almak"
keywords: "git, git cat-file"
# asides: []
---
[An itibariyle][sample], `master` branch’in `HEAD` yani son haline
bakarsak `7e4ad38` ya da `7e4ad38078b32dbe5335745fcda19bf120fb5812`
**SHA1** görürüz.

Git; **Object**, **Hash** ve **Blob**’lardan oluşur. İlgili obje’nin
detaylarına bakmak için;

<!-- more -->

    git cat-file -p 7e4ad38

dediğimizde;

    tree b2b9af79c350340bee27584a775911e1e52af7e5
    parent 252c2ad95c67d3b6249137e62548d0a7755edca2
    parent 7a9cccf97cd7808ce3999dc857550e739cbdb050
    author Uğur Özyılmazel <email> 1355832983 +0200
    committer Uğur Özyılmazel <email> 1355832983 +0200

    Merge branch 'hotfix/fab-complete'

görürüz.

    git cat-file -t 7e4ad38 # obje tipini verir
    git cat-file -s 7e4ad38 # obje büyüklüğünü verir (size)

{% render_partial _includes/global_links.markdown %}
