---
layout: post
title: "`git-log` Çıktısını Formatlamak"
date: 2013-01-14 00:51
comments: true
categories: [ Log ]
tags: [ git-log, format ]
description: "Git’de renkli log almak"
keywords: "git, git log, format git log, color log"
# asides: []
---

    git log --pretty=format:'%Cblue%h%Creset %Cgreen%an%Creset %s (%Cred%ar%Creset)'

<!-- more -->

[{% img center http://24.media.tumblr.com/bb0b4749953d850e6b768bad2d840251/tumblr_mgl80whokP1s3r5wmo1_1280.png %}][big]  

İlk örnek;

    SHA1                     : Kısa versiyon                          [mavi]
    Author Name              : Commit sahibinin Adı, Soyadı           [yeşil]
    Commit Message           : Commit mesajı
    Author Date: Relative    : Commit tarihi, XX gün/ay/yıl önce gibi [kırmızı]

şeklinde verir. Yani;

    14d0c4a Uğur Özyılmazel fabric / fab autocompletion fix (4 weeks ago)
    9819725 Uğur Özyılmazel Merge branch 'release/ackrc' (4 weeks ago)
    403a16a Uğur Özyılmazel less support for ack (4 weeks ago)
    ad971c1 Uğur Özyılmazel Merge branch 'develop' (8 weeks ago)
    173ddab Uğur Özyılmazel fab fix (8 weeks ago)

görürüz.

    git log --pretty=format:'%Cblue%h%Creset %Cgreen%an%Creset %s (%Cred%ar | %ad%Creset)'

İkinci örnek aynı ilki gibi çıktı verir sadece fazladan **Author Date**‘in
açık halini de verir. **Author** ile **Committer** arasındaki farkı merak
ediyorsanız önceki [post][ppost]‘a bakabilirsiniz.

    14d0c4a Uğur Özyılmazel fabric / fab autocompletion fix (4 weeks ago | Tue Dec 18 14:05:50 2012 +0200)
    9819725 Uğur Özyılmazel Merge branch 'release/ackrc' (4 weeks ago | Mon Dec 17 18:25:55 2012 +0200)
    403a16a Uğur Özyılmazel less support for ack (4 weeks ago | Mon Dec 17 18:25:16 2012 +0200)
    ad971c1 Uğur Özyılmazel Merge branch 'develop' (8 weeks ago | Thu Nov 15 14:07:04 2012 +0200)
    173ddab Uğur Özyılmazel fab fix (8 weeks ago | Thu Nov 15 14:06:45 2012 +0200)

## Format değişkenleri (Placeholders)

    %H       : 45ec63deba36cee1b7fd3913790293901785a259 | SHA1
    %h       : 45ec63d | SHA1 Kısa
    %T       : 4564afd25a3522dbbc594652ff1977b17d90e221 | (tree hash)
    %t       : 4564afd | (tree hash Kısa)
    %P       : 535bcf41885555a7923965b7c4c92214349f8743 1a14ea28e82924c3e6991337119af5b9c37111e4
             : Bağlı olduğu hash'ler (parent)
    %p       : 535bcf4 1a14ea2 Bağlı olduğu hash'ler Kısa (parent)
    %an      : Uğur Özyılmazel | Author Adı
    %aN      : Uğur Özyılmazel | Author Adı (.mailmap ayarlarını koruyarak)
    %ae      : ugur@example.com | Author E-Posta adresi
    %aE      : ugur@example.com | Author E-Posta adresi (.mailmap ayarlarını koruyarak)
    %ad      : Fri Jan 11 23:20:03 2013 +0200 | Author'un tarihi, (--date= opsiyonuna sadık kalarak)
    %aD      : Fri, 11 Jan 2013 23:20:03 +0200 | Author'un tarihi, RFC2822 stilinde
    %ar      : 2 days ago | Author'un tarihi, bağlantılı (Relative)
    %at      : 1357939203 | Author'un tarihi, UNIX timestamp
    %ai      : 2013-01-11 23:20:03 +0200 | Author'un tarihi, ISO 8601 formatı
    %cn      : Uğur Özyılmazel | Commit'i yapanın Adı
    %cN      : Uğur Özyılmazel | Commit'i yapanın (.mailmap ayarlarını koruyarak)
    %ce      : ugur@example.com | Commit'i yapanın E-Posta adresi
    %cE      : ugur@example.com | Commit'i yapanın E-Posta adresi (.mailmap ayarlarını koruyarak)
    %cd      : Fri Jan 11 23:20:03 2013 +0200 | Commit'i yapanın Tarihi
    %cD      : Fri, 11 Jan 2013 23:20:03 +0200 | Commit'i yapanın Tarihi, RFC2822 stilinde
    %cr      : 2 days ago | Commit'i yapanın Tarihi, bağlantılı (Relative)
    %ct      : 1357939203 | Commit'i yapanın Tarihi, UNIX timestamp
    %ci      : 2013-01-11 23:20:03 +0200 | Commit'i yapanın Tarihi, ISO 8601 formatı
    %d       : (HEAD, origin/develop, develop) | ref names, like the --decorate option of git-log(1)
    %e       : encoding
    %s       : Merge branch 'hotfix/non-applied' into develop | Commit mesajı'nın ilk satırı yani "subject"
    %f       : Merge-branch-hotfix-non-applied-into-develop | Arındırılmış "subject" mesajı, dosya adı için uygun!
    %b       : Commit mesajının "subject" den sonrası
    %B       : Subject ve Body birlikte
    %N       : Notlar (git notes edit SHA1 ile eklenen)

    %Cred    : Kırmızı renk
    %Cgreen  : Yeşil renk
    %Cblue   : Mavi renk
    %Creset  : Rengi sıfırlar
    %C(...)  : color.branch.* dosyasında tanımlanmış renk bilgisi

    %m       : Sol, sağ ya da sınır çizgisi işareti
    %n       : Yeni satır (new line)
    %%       : Mesaj içinde % işareti kullanmak için
    %x00     : Byte olarak HEX-CODE yazmak

    # Eğer GPG Signing varsa;
    %GG      : işlenmemiş doğrulama mesajı
    %G?      : "G" ya da "B" gelir, G=Good B=Bad yani İyi/Kötü anlamında
    %GS      : Sign edeni gösterir

    # git reflog ile kullanılır.
    %gD      : reflog selector, e.g., refs/stash@{1}
    %gd      : shortened reflog selector, e.g., stash@{1}
    %gn      : reflog identity name
    %gN      : reflog identity name (respecting .mailmap, see git-shortlog(1) or git-blame(1))
    %ge      : reflog identity email
    %gE      : reflog identity email (respecting .mailmap, see git-shortlog(1) or git-blame(1))
    %gs      : reflog subject

    %w([<w>[,<i1>[,<i2>]]])
             : Default: İlk satır 76 karakter, 2. ve 3.satırlar 6 karakter girintilidir


{% render_partial _includes/global_links.markdown %}

[big]: http://24.media.tumblr.com/bb0b4749953d850e6b768bad2d840251/tumblr_mgl80whokP1s3r5wmo1_1280.png
[ppost]: /ipucu/2013/01/14/author-ile-committer-arasindaki-fark/