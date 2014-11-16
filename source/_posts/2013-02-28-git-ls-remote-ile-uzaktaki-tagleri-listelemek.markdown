---
layout: post
title: "`git-ls-remote` İle Uzaktaki TAG’leri listelemek"
date: 2013-02-28 00:25
comments: true
categories: [ Tag ]
tags: [ git-ls-remote, git-tag ]
description: "Uzaktaki repoda bulunan tag’leri listeleyelim."
keywords: "git, git tag, git remote tag"
# asides: []
---

    git ls-remote --tags

<!-- more -->

Özellikle [Github][github] kullananlar için çok kullanışlı bir komut. [Örnek][sample]
projede;

    git list-remote-tags

    From git@github.com:vigo/dotfiles-bash.git
    8a63ef3dde0ad0571220be83c5c13e2e032127ae    refs/tags/v0.6.5
    6b83f7c853efe88a5067a8848c1cabab1496ecd3    refs/tags/v0.6.5^{}
    223690e53d0c241c0123829470cb5ae216d33c5e    refs/tags/v0.6.6
    df345467e96452e0f28dc16c21ecea9c376017bf    refs/tags/v0.6.6^{}
    4fae319de58d09923dbbfdce5bffff6941831ea1    refs/tags/v0.6.7

şeklinde bir çıktı görüntülenir. `alias` yapabilirsiniz:
```bash
git config --global alias.list-remote-tags "ls-remote --tags"
git list-remote-tags # şeklinde kullanım
```
{% render_partial _includes/global_links.markdown %}
