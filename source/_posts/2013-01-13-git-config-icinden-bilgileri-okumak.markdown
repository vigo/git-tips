---
layout: post
title: "`git-config` İçinden Bilgileri Okumak"
date: 2013-01-13 01:04
comments: true
categories: [ Konfigürasyon ]
tags: [ git-config ]
description: "Git konfigürasyon dosyasından bilgi okumak"
keywords: "git, git-config, git config, read value"
# asides: []
---

    git config --get user.email

<!-- more -->

`git`, kendi içinde [bash-completion][01] yani `[tab]` tuşuyla tamamlama
özelliğiyle birlikte gelir. Eğer sisteminizde Unix/Linux `bash-completion`
açıksa [tab] basarak git’e ait neredeyse herşeyi tamamlayabilirsiniz.

    git config --get[tab]

Eğer herşey yolundaysa aşağıdaki gibi bir sahne görürsünüz:

    alias.br                            alias.vloga                         color.ui 
    alias.bra                           branch.master.merge                 core.bare 
    alias.brd                           branch.master.remote                core.excludesfile 
    alias.brr                           color.branch                        core.filemode 
    alias.ci                            color.branch.current                core.ignorecase 
    alias.co                            color.branch.local                  core.logallrefupdates 
    alias.deleted                       color.branch.remote                 core.repositoryformatversion 
    alias.df                            color.diff                          core.whitespace 
    alias.ign                           color.diff.frag                     github.token 
    alias.lg                            color.diff.meta                     github.user 
    alias.ls                            color.diff.new                      remote.origin.fetch 
    alias.st                            color.diff.old                      remote.origin.url 
    alias.sts                           color.status                        submodule.externals/scripts/z.url 
    alias.vlog                          color.status.added                  user.email 
    alias.vlog2a                        color.status.changed                user.name 
    alias.vlog2b                        color.status.untracked

{% render_partial _includes/global_links.markdown %}


[01]: http://bash-completion.alioth.debian.org/