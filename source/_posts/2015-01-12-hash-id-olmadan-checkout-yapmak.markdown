---
layout: post
title: "Hash ID olmadan checkout yapmak"
date: 2015-01-12 14:15
comments: true
categories: [ branch ]
tags: [ branch ]
description: "Hash ID olmadan checkout yapmak..."
keywords: "branch, checkout, hash"
# asides: []
---

Kısa ya da uzun **hash** kullanmadan, log’da yazan **commit** mesajları
içindeki metne göre `checkout` yapmak mümkün! Örneğin aşağıdaki gibi
bir log durumu olsun:

<!-- more -->

    $ git log --graph --decorate --oneline

    * 8643f71 (HEAD, origin/master, origin/HEAD, master) readme.md - update
    * ef7e0db git-add-push-all disabled
    * fef4371 prompt fixes
    * fb49e9e fix for non-interactive shell
    * 0f6f2cb fix
    * e3460e8 TextEdit tweaks
    * a75df2d ackrc added
    * 862543f wrong file deleted
    * 4fdbd74 screenshot added
    * 2a67e32 readme.md - update
    * caa8496 readme.md - update
    * e0fc16a ubuntu installation
    * b578f53 PS1 for Linux
    * 8c636ac ubuntu specific
    * 34662bc readme.md - update
    * a5eb0d9 osx tweaks
    * 459e1ee PS1 color tests
    * b77b4ff mini colorization on PS1
    * 2e4c6cd osx tweaks
    * b20e10f ls file colors
    * 6c248a6 'git push all' helper function
    * b68f65c py + rb http static servers + mac specific aliases
    * 55f1b53 bash completion fixes
    * 90120b3 bash completion for bundler
    * 58b5938 custom and default bash-completions
    * 345d5ab git_prompt unicode signs
    * fd11d79 soft-tab fix
    * e3f7fae gitignore fix
    * e8aa053 private/ load all
    * eadaf03 gitignore for private/ folder
    * 5fd8c77 mac specific aliases
    * 1be9857 PS1 works done
    * 785cbcc git_prompt ok
    * 5cd2461 git_prompt wip
    * 09ae283 wip
    * 4ac0c4d env + mac specifics
    * d06dd4e profile and bashrc
    * 85684ab Initial commit

Şimdi `a5eb0d9` numaralı hash’e gitmek için `git checkout a5eb0d9` yerine:

    git checkout :/"osx tweaks"

yapabiliriz. Dikkat ettiyseniz içinde **tweaks** geçen birden fazla 
log mesajı var. Eğer;

    git checkout :/"tweaks"

dersek, bize en yakın olan, içinde **tweaks** geçen log’un bulunduğu
revizyona checkout ederiz:

    HEAD is now at e3460e8... TextEdit tweaks

mesajını görürüz. Sonuç olarak `:/"ARANACAK KELİME"` şeklinde kullanabiliriz.
Buradan da şunu anlıyoruz, commit mesajları ne kadar anlamlı ve düzgün
yazılırsa o kadar faydalı oluyor :)

{% render_partial _includes/global_links.markdown %}
