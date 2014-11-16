---
layout: post
title: "Commit'leri Sayalım"
date: 2013-01-16 11:31
comments: true
categories: [ Log ]
tags: [ git-log, count ]
description: "Kim? kaç tane commit yaptı?"
keywords: "git, git log, git count commits"
# asides: []
---
Acaba projenizde **kim** kaç **commit** yaptı?

    git shortlog -s -n

<!-- more -->

Gelen sayfada commit adedi ve kimin yaptığını görebilirsiniz.

```bash
    75  Uğur Özyılmazel
```

Eğer bu işi, kişi ayırmadan yapmak istiyorsak:

    git --no-pager log --oneline | wc -l

{% render_partial _includes/global_links.markdown %}
