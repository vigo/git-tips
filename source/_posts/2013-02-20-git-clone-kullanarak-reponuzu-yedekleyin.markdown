---
layout: post
title: "`git-clone` Kullanarak Reponuzu Yedekleyin"
date: 2013-02-20 21:59
comments: true
categories: [ Temel ]
tags: [ git-clone ]
description: "Repository’inizi `git-clone` kullanarak yedekleyebilirsiniz."
keywords: "git, git clone, backup repo"
# asides: []
---

    git clone /yedeklemek/istediğiniz/repo /yedekleyeceğiniz/dizin

<!-- more -->
`git clone` sadece uzaktaki repo’dan transfer için kullanılan bir komut değil.
Aynı zamanda yerel (*local*) işlemlerde de kullanılıyor. Örneğin uzaktaki
repo’dan yerele `clone` yaptınız:

```bash
cd $HOME
git clone git://github.com/vigo/git-tips.git test-repo
ls -al      # test-repo dizinini görmeniz gerekiyor... şimdi yedekliyelim...
git clone $HOME/test-repo /tmp/yedek-test-repo
```

[Github][github]’dan repo’yu `clone` yaptık yerelimize. Sonra yerelimizdeki
repo dizininden başka bir yere kopya çıkarttık.

{% render_partial _includes/global_links.markdown %}
