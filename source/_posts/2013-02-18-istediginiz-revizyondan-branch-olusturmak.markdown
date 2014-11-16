---
layout: post
title: "İstediğiniz Revizyondan `branch` Oluşturmak"
date: 2013-02-18 23:11
comments: true
categories: [ Branch ]
tags: [ git-branch ]
description: "Herhangi bir revizyondan branch oluşturabilirsiniz."
keywords: "git, git branch, branching, create branch from specific revision"
# asides: []
---

    git branch BRANCH_ADI REVIZYON
    git checkout -b BRANCH_ADI REVIZYON

<!-- more -->

İlk örnekte, açtığınız `branch`e `git checkout BRANCH_ADI` ile geçiş
yapabilirsiniz. İkinci örnek; `branch`i oluşturur ve hemen oluşan yeni
branch’e `checkout` yapar.

[Örnek][sample] projede şu şekilde yapabilirdik;

    git checkout -b testing_branch 8bab7c4

{% render_partial _includes/global_links.markdown %}
