---
layout: post
title: "`git-bundle` Repo’yu Tek Dosya Haline Getirmek"
date: 2013-01-06 23:34
comments: true
categories: [ Paket ]
tags: [ git-bundle ]
description: "Repository'i tek dosya haline getirmek."
keywords: "git, git bundle, bundle, pack"
# asides: []
---

    git bundle create /path/to/FILE.bundle BRANCH

Örneğin; `develop` adında bir **branch**’iniz var, bunu email ile arkadaşınıza
yollamak istiyorsunuz:
<!-- more -->
`$HOME/Desktop` folder’ına bundle’ı oluşturalım:

    git bundle create ~/Desktop/repo.bundle develop
    git ls-remote ~/Desktop/repo.bundle
    # SHA refs/heads/develop şeklinde görülür


Oluşan `repo.bundle` paketini repo **clone** edermiş gibi kullanmak:

    git clone /path/to/FILE.bundle -b TARGET_BRANCH /path/to/repo
    
    # develop branch’ine clone ettim
    git clone ~/Desktop/repo.bundle -b develop /tmp/test-repo

Daha sonra bu repo üzerinde çalışmaya devam ettim ve **2 dosya** ekledim.
Yaptıklarımı (*sadece benim tarafımdan yapılanları*) görmek için:

    git log --oneline develop ^origin/develop

Gelen bundle sadece `develop` branch’i olduğu için, bendeki ile `origin`‘dekini
karşılaştırıyorum. Bundle’ı yollayan arkadaşıma **sadece benim tarafımdan**
yapılanları tekrar paket yapıp yollamak istiyorum.

    git bundle create ~/Desktop/commits.bundle develop ^origin/develop

Bundle’ın hatalı olup olmadığını `verify` ile anlıyoruz.

    git bundle verify ~/Desktop/commits.bundle

Yaptığınız **commit**’leri bundle haline getirip karşı tarafa yolladınız.
Peki karşı tarafta bu birleştirme işi nasıl olacak?

    git fetch ~/Desktop/commits.bundle develop:friends-develop
    git log --oneline --decorate --graph --all
    # dosyanın ~/Desktop'da olduğunu varsayıyorum

{% render_partial _includes/global_links.markdown %}
