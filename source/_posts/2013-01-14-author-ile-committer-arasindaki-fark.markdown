---
layout: post
title: "“Author” ile “Committer” arasındaki fark?"
date: 2013-01-14 00:31
comments: true
categories: [ Log, Konfigürasyon, Biliyormusunuz ]
tags: [ git-log, format ]
description: "“Author” ile “Committer” arasındaki fark?"
keywords: "git, git log, format git log, string format"
# asides: []
---
Git’in yazılma amaçlarından biri de **e-posta** ile gelen **patch**‘lerin
kolayca sisteme entegre edilmesiydi.
<!-- more -->

Bu bakımdan patch’i yazıp yollayan kişi **Author**, patch’i monte eden yani
“patchleyen” kişi de **Committer** oluyor. Log işlemleri ve log çıktısını
format ederken karşımıza çıkacak bir durum bu.

Author Name, Author Email ve Committer Name, Committer Email.

Genelde web projelerinde pek bu tür patch işleri olmaz. Bu bakımdan da **author**
ile **committer** aynı kişi gibi olur.

{% render_partial _includes/global_links.markdown %}
