---
layout: post
title: "`git-rm` Dosyayı versiyon kontrol altından çıkarmak"
date: 2013-01-22 17:30
comments: true
categories: [ Temel ]
tags: [ git-rm, gitignore ]
description: "Versiyon kontrol altındaki dosyayı .gitignore aldığınızda halen -modified- görünebilir."
keywords: "git, git rm, gitignore, cached"
# asides: []
---
Versiyon kontrol altındaki bir dosyayı daha sonradan `.gitignore`a eklediniz.
<!-- more -->

`.gitignore`’un değiştiğini gördünüz ve `git add` ile eklediniz. Daha sonra
**ignore** ettiğiniz dosyada değişiklik yaptınız ve halen kontrol altında
olduğunu gördünüz.

    echo "file.txt" > .gitignore # file.txt’yi ignore ettiniz.
    
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   .gitignore
    nothing added to commit but untracked files present (use "git add" to track)

    git add .gitignore
    git commit -m "file.txt ignore'a alındı"
    git status
    
    # On branch master
    nothing to commit, working directory clean
    
    echo "file" >> file.txt
    # file.txt’ye yeni bir satır ekledik. ignore edildiğine göre bir sorun
    # olmamalı... kontrol edelim
    
    git status
    
    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #   modified:   file.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")

`file.txt` **modified** görünüyor??? Halbuki biz bu dosyayı `.gitignore`’a
eklemiştik???

Bu durumu düzeltmek için;

    git rm --cached file.txt

yapmamız gerekiyor. Kormayın dosya silinmedi (8

<div class="flash-video">
    <div><iframe src="http://www.screenr.com/embed/qMO7" width="650" height="396" frameborder="0"></iframe></div>
</div>


{% render_partial _includes/global_links.markdown %}
