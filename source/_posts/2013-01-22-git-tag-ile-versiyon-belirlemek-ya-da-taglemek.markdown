---
layout: post
title: "`git-tag` İle Versiyon Belirlemek ya da Tag’lemek"
date: 2013-01-22 22:50
comments: true
categories: [ Tag ]
tags: [ git-tag, rev-parse ]
description: "Revizyonu etiketlemek ya da TAG’lemek"
keywords: "git, git tag, revison tag"
# asides: []
---
Revizyonu etiketlemek çok işe yarıyabilir. Belirleyeceğiniz etikete ya da
versiyona kolay geri dönebilirsiniz.
<!-- more -->

Etiketlemek ya da **tag**’lemek değişik yollarla mümkün.

    git tag ETİKET                # o anki revizyona etiketi’i oluştur
    
    # ya da
    git tag -a ETİKET -m "Mesaj"
    
ya da

    git tag -m "Mesaj" ETİKET SHA1

İkinci örnek bence daha pratik. İstediğiniz bir revizyona etiket
atayabilirsiniz. Repodaki etiketleri;

    git tag

listeleyebilirsiniz. Her zaman olduğu gibi örnek [projeye][sample] bakalım:

    git tag
    
    v0.5.1
    v0.6
    v0.6.1
    v0.6.2

    git rev-parse v0.6.2
    # 9030576ac90eb8c1a9ba77432792deafb2272852
    
    git cat-file -p 903057 # SHA1’in ilk 6 harfi de kullanılabilir
    
    object 4fceaf40f4452cb0168f7af37ef14de657cdb994
    type commit
    tag v6.0.2
    tagger Uğur Özyılmazel <ugur@-----.com> Tue Jan 22 11:33:23 2013 +0200

    battery_prompt.rb now suppors osx internal notification. requires "terminal-notifier" gem

`tag` ile ilgili pek çok şeyi görebiliyoruz.

Aynı **branch** gibi çalışan tag’lere de `checkout` etmek mümkün. Zaten bu
versiyonlama durumu da burada işe yarıyor. Örnek projede istediğimiz bir
tag’a geçiş yapalım:

    git checkout v0.6.2

karşımıza şu mesaj çıkar:

    Note: checking out 'v0.6.2'.

    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.

    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:

      git checkout -b new_branch_name

    HEAD is now at 4fceaf4... Merge branch 'release/v6.0.2'

Bu durumda eğer `.git/HEAD` dosyasına bakarsanız, **ref** bilgisi yerine
revizyon bilgisini görürsünüz yani `4fceaf40f4452cb0168f7af37ef14de657cdb994`

Eğer isterseniz, bulunduğunuz noktadan başka bir **branch**
oluşturabilirsiniz:

    git checkout -b BRANCH_İSMİ
    # BRANCH_İSMİ adında branch oluştur ve bu branch’e geç

`tag` içindeyken aynı **branch**’deymiş gibi değişiklik yapıp `commit`
edebilirsiniz. İşiniz bitince `master` branch’e ya da başka bir branch’e
geçiş yaptığınızda karşınıza uyarı mesajı çıkar.

    Warning: you are leaving 1 commit behind, not connected to
    any of your branches:

      ff77580 file-v1.txt eklendi

    If you want to keep them by creating a new branch, this may be a good time
    to do so with:

     git branch new_branch_name ff77580d9aa76d24aefe0ec6fc887df4cfd23064

    Switched to branch 'master'

**1 commit** geride kaldın! `ff77580` numaralı revizyondaki değişiklikleri
almak istiyorsan o revizyondan bir branch üretmen gerek! Bunun için gerekli
komutu da bize sağlıyor `git`:

    git branch new_branch_name ff77580d9aa76d24aefe0ec6fc887df4cfd23064

`new_branch_name` kısmına oluşturacağınız yeni **branch**’in adını
yazıyorsunuz. `tag` içindeki değişikleri ancak bu tag’dan oluşturacağınız
farklı bir branch’le alabiliyorsunuz. İsterseniz bu oluşan yeni branch’i
ilgili diğer branch’lere `merge` edebilir, o değişiklikleri gerekiyorsa
tüm branch’lerinize aktara bilirsiniz.

{% render_partial _includes/global_links.markdown %}
