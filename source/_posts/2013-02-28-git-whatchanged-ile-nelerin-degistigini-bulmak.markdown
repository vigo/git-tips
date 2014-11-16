---
layout: post
title: "`git-whatchanged` İle Nelerin Değiştiğini Bulmak"
date: 2013-02-28 22:41
comments: true
categories: [ Log ]
tags: [ git-log ]
description: "Commit’ler arasında kaybolduğunuzda bir çırpıda nelerin değiştini görmek istemez misiniz?"
keywords: "git, change, whatchanged"
# asides: []
---

    git whatchanged --oneline

<!-- more -->

[Örnek][sample] projede bu komutu çalıştırdığınızda;

    4fae319 Due to nano config issues, i uninstalled nano from brew:
    :100644 100644 9e98075... d293000... M  rc/nanorc
    :100644 100644 119a5a3... aca0127... M  shell/alias
    8c9e2ba nanorc fix
    :100644 100644 0119faf... 9e98075... M  rc/nanorc

çıktısı alırsınız.

```bash
git whatchanged --oneline -n 5  # son 5 commit
```

{% render_partial _includes/global_links.markdown %}
