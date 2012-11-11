# Octopress Türkçe

Türkçe dökümantasyon, kurulum vs tüm bilgiler en kısa sürede eklenecektir.

## Açıklama
Octopress [Jekyll][1] tabanlı blog sistemidir. [Projenin orijinali][2], [Projenin sitesi][3]
adreslerindedir. Bu sistem yardımıyla kendi bilgisayarınızda `statik html` sayfalarından
sanki veritabanı olan dinamik bir web sitesi sistemi oluşturabilirsiniz.

Oluşturacağınız site, iPhone, iPad ve diğer mobil cihazlarla da uyumlu olacaktır.

Kendi sitenizi yapabilmek için gerekenler:

- Git
- Ruby 1.9.2 (*RVM ya da rbenv ile kurulması tavsiye ediliyor.*)

### Mac OS X Lion Kullanıcıları Dikkat
OS X Lion (10.7) ile beraber değişen derleme ortamları yüzünden ilk önce eski
`gcc` yi indirip kurmanız gerekmetedir.

[https://github.com/kennethreitz/osx-gcc-installer][4]

Derleme işlemine komut satırından başlamadan önce sisteminizde `readline`
kütüphanesinin de kurulu olması gerekiyor. Eğer kurulu değilse;

    brew install readline

kullanarak kurabilirsiniz. Kurulum bittikten sonra lütfen `CPPFLAGS` ve
`LDFLAGS` değişkenlerini kontrol edin. Aşağıdaki `PATH` bilgisi doğru olmalı.
`readline`ı kontrol etmel için:

    brew ls readline

diyebilir ve `include` `lib` folder'larına bakabilirsiniz. Sizdeki sürüm ne
ise aşağıdaki değerleri ona göre ayarlayın:

    export CPPFLAGS=-I/usr/local/Cellar/readline/6.2.4/include
    export LDFLAGS=-L/usr/local/Cellar/readline/6.2.4/lib

ve daha sonra `rbenv` ile gereken ruby'i kurun;

    rbenv install 1.9.2-p290
    rbenv rehash

ve daha sonra da;

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/

yapın...

## Kurulum

    gem install bundler
    bundle

Test etmek için:

    rake generate
    rake preview

sonra [http://localhost:4000][lcl]

---

## Ayarlar
### _config.yml

Sitenizle ilgili hemen hemen her ayar bu dosyadan yapılıyor. Aşağıdaki örnek
kendi sitemden alınmıştır:

```yaml
url: http://ugur.ozyilmazel.com
title: "Uğur Özyılmazel"
subtitle: "Kişisel Web Blogum"
author: 'Uğur Özyılmazel'
simple_search: http://google.com/search
description: "Uğur Özyılmazel'in kişisel web sitesi..."

date_format: "ordinal"                         # Türkçe'de ordinal olmadığı için default olarak
                                               # Aralık 26 Pazartesi, 2011 gibi
                                               # %B %e %A, %Y
subscribe_rss: atom.xml

root: / # sitenizin root'u
permalink: /blog/:year/:month/:day/:title/     # yani /blog/2012/11/15/blog-baslik/ gibi
source: source                                 # tüm postlarınız / sayfalarınız burada duracak
destination: public                            # sunucuya gönderilecek folder
plugins: plugins                               # pluginlerin yeri
code_dir: downloads/code                       # eğer code dosyaları dağıtacaksanız buradan...
category_dir: blog/kategoriler                 # /blog/kategoriler/anket/ gibi...
category_title_prefix: 'Kategori: '            # Kategori: Anket
                                               
tag_dir: blog/etiketler                        # /blog/etiketler/python/
tag_title_prefix: 'Etiket: '                   # 'Etiket: Python'
                                               
markdown: rdiscount                            # ruby markdown engine
pygments: false                                # syntax coloring için pygments.rb kullan
paginate: 10                                   # Sayfa başı 10 post
pagination_dir: blog                           # /blog/page/2/ gibi
recent_posts: 5                                # Son 5 post
excerpt_link: "Devamı &rarr;"                  # Excerpt kullanılınca, "Devamı >" linki
titlecase: false                               # Kontrol edilmesi açısında off
default_asides: [
    custom/asides/freesoftwarefoundation.html, # sağ kolonda çıkacaklar
    custom/asides/hakkimda.html,
    asides/recent_posts.html,
    asides/tag_cloud.html,
    asides/categories.html,
    asides/github.html,
    asides/twitter.html,
    asides/delicious.html,
    asides/pinboard.html,
    asides/googleplus.html
]


github_user:                                   # GitHub kullanıcı adınız, eğer varsa
github_repo_count: 0                           # 0 demek tüm repolarınızı gösterir anlamında
github_show_profile_link: true                 # profil linkiniz
github_skip_forks: true                        # fork ettiğiniz repo'ları gösterme

twitter_user:                                  # Twitter kullanıcı adınız
twitter_tweet_count: 5                         # son kaç tweet?
twitter_show_replies: false                    # gelen reply'leri gösterme
twitter_follow_button: true                    # "follow" linkini göster
twitter_show_follower_count: true              # takipçi sayısını göster
twitter_tweet_button: true                     # "tweetle" linkini göster

google_plus_one: false                         # google plus'ın + linki
google_plus_one_size: medium                   #

googleplus_user:                               # google plus kullanıcı adı
googleplus_hidden: false                       #

pinboard_user:                                 # pinboard servisi kullanıcı adı
pinboard_count: 3                              # kaç tane gösterilsin

delicious_user:                                # delicious servisi kullanıcı adı
delicious_count: 3                             # kaç tane gösterilsin

disqus_short_name:                             # disqus servisi için kullancı adı
disqus_show_comment_count: false               # yorum sayısını gösterme

google_analytics_tracking_id:                  # google analytics içi tracking_id örnek: UA-XXXX

facebook_like: true                            # facebook like buttonu
facebook_locale: tr_TR                         # lisanı Türkçe, eğer en_US dersenin İngilizce olur


instapaper: true                               # instapaper servisini kullan
instapaper_button_title: "Instapaper"          # 
instapaper_link_title: "Instapaper'e gönder..."

open_links_in_new_window: true                 # linkleri yeni sayfada aç

vimeo_information_format:                      # vimeo plugini için varsayılan
                                               # '<p><a href="http://vimeo.com/%{id}">%{title}</a> / <a href="%{author_url}">%{author_name}</a></p>'
                                               # parametreler
                                               # %{id}
                                               # %{title}
                                               # %{author_url}
                                               # %{author_name}
                                               # %{duration}
                                               # %{description}
                                               # %{thumbnail_url}

tag_cloud_size: 30                             # en popüler 30 etiketi göster
tag_cloud_max_ranks: 15                        # en büyük tag 15, en küçük 1 olsun
```

---

## Web Sunucusuna Yükleme (Deployment)

### GitHub
Pek yakında

### Heroku
Pek yakında

### Rsync ile kendi sunucunuza
Pek yakında

---

## Blog ve Sayfa
Pek yakında

---

## Eklentiler (Pluginler)
Pek yakında

---

## Lisans
(The MIT License)

Copyright © 2009-2011 Brandon Mathis

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#### Desteklemek için.
- Footer'daki Octopress linkini koruyun.
- Sitenizi Octopress [Wiki sayfasına](https://github.com/imathis/octopress/wiki/Octopress-Sites) ekleyerek topluluğu genişletin.


[1]: https://github.com/mojombo/jekyll
[2]: https://github.com/imathis/octopress "Octopress Orijinal Proje"
[3]: http://octopress.org/docs "Octopress İngilizce Dokümantasyon"
[4]: https://github.com/kennethreitz/osx-gcc-installer "OS X gcc"

[lcl]: http://localhost:4000 "Yerel Sunucu"