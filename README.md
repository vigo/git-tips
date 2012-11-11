# Octopress Türkçe

Türkçe dökümantasyon, kurulum vs tüm bilgiler en kısa sürede eklenecektir.

## Açıklama

![Octopress Türkçe - Anasayfa][scr-001]  

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

Sitenizle ilgili hemen hemen her ayar bu dosyadan yapılıyor.

```yaml
url: http://siteniz.com                                     # sitenizin adresi
title: "Adınız Soyadınız"                                   # sitenizin başlığı
subtitle: "Alt başlık"                                      # sitenizin alt başlığı
author: 'Adınız Soyadınız'                                  # Adınız soyadınız, aynen tek tırnak içinde
simple_search: http://google.com/search                     # google arasın
description: "Sitenizin açıklaması"                         # html için genel site description'ı

date_format: "ordinal"                                      # Türkçe'de ordinal olmadığı için default olarak
                                                            # Aralık 26 Pazartesi, 2011 gibi
                                                            # %B %e %A, %Y
subscribe_rss: atom.xml

root: /                                                     # sitenizin root'u
permalink: /blog/:year/:month/:day/:title/                  # yani /blog/2012/11/15/blog-baslik/ gibi
source: source                                              # tüm postlarınız / sayfalarınız burada duracak
destination: public                                         # sunucuya gönderilecek folder
plugins: plugins                                            # pluginlerin yeri
code_dir: downloads/code                                    # eğer code dosyaları dağıtacaksanız buradan...
category_dir: blog/kategoriler                              # /blog/kategoriler/anket/ gibi...
category_title_prefix: 'Kategori: '                         # Kategori: Anket
                                                            
tag_dir: blog/etiketler                                     # /blog/etiketler/python/
tag_title_prefix: 'Etiket: '                                # 'Etiket: Python'
                                                            
markdown: rdiscount                                         # ruby markdown engine
pygments: false                                             # syntax coloring için pygments.rb kullan
paginate: 10                                                # Sayfa başı 10 post
pagination_dir: blog                                        # /blog/page/2/ gibi
recent_posts: 5                                             # Son 5 post
excerpt_link: "Devamı &rarr;"                               # Excerpt kullanılınca, "Devamı >" linki
titlecase: false                                            # Kontrol edilmesi açısında off
default_asides: [
    custom/asides/freesoftwarefoundation.html,              # sağ kolonda çıkacaklar
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


github_user: GITHUB_KULLANICI_ADI                           # GitHub kullanıcı adınız, eğer varsa
github_repo_count: 0                                        # 0 demek tüm repolarınızı gösterir anlamında
github_show_profile_link: true                              # profil linkiniz
github_skip_forks: true                                     # fork ettiğiniz repo'ları gösterme
                                                            
twitter_user: TWITTER_KULANICI_ADI                          # Twitter kullanıcı adınız
twitter_tweet_count: 5                                      # son kaç tweet?
twitter_show_replies: false                                 # gelen reply'leri gösterme
twitter_follow_button: true                                 # "follow" linkini göster
twitter_show_follower_count: true                           # takipçi sayısını göster
twitter_tweet_button: true                                  # "tweetle" linkini göster
                                                            
google_plus_one: false                                      # google plus'ın + linki
google_plus_one_size: medium                                #
                                                            
googleplus_user:                                            # google plus kullanıcı adı
googleplus_hidden: false                                    #
                                                            
pinboard_user:                                              # pinboard servisi kullanıcı adı
pinboard_count: 3                                           # kaç tane gösterilsin
                                                            
delicious_user:                                             # delicious servisi kullanıcı adı
delicious_count: 3                                          # kaç tane gösterilsin
                                                            
disqus_short_name:                                          # disqus servisi için kullancı adı
disqus_show_comment_count: false                            # yorum sayısını gösterme
                                                            
google_analytics_tracking_id:                               # google analytics içi tracking_id örnek: UA-XXXX
                                                            
facebook_like: true                                         # facebook like buttonu
facebook_locale: tr_TR                                      # lisanı Türkçe, eğer en_US dersenin İngilizce olur


instapaper: true                                            # instapaper servisini kullan
instapaper_button_title: "Instapaper"                       # 
instapaper_link_title: "Instapaper'e gönder..."

open_links_in_new_window: true                              # linkleri yeni sayfada aç

vimeo_information_format:                                   # vimeo plugini için varsayılan
                                                            # '<p><a href="http://vimeo.com/%{id}">%{title}</a> / <a href="%{author_url}">%{author_name}</a></p>'
                                                            # parametreler
                                                            # %{id}
                                                            # %{title}
                                                            # %{author_url}
                                                            # %{author_name}
                                                            # %{duration}
                                                            # %{description}
                                                            # %{thumbnail_url}
                                                            
tag_cloud_size: 30                                          # en popüler 30 etiketi göster
tag_cloud_max_ranks: 15                                     # en büyük tag 15, en küçük 1 olsun
```

---

## Rake Komutları
İçinde gelen `rake` task'leri görmek için:

    rake -T

    rake clean                     # Cache'leri temizler: .pygments-cache, .gist-cache, .sass-cache
    rake copydot[source,dest]      # Deployment için . ile başlayan dosyaları kopyalamanıza yarar
    rake deploy                    # Default deploy işlemi
    rake gen_deploy                # Website'sini üret ve deploy et
    rake generate                  # Jekyll site'sini üret
    rake install[theme]            # Octopress'in ilk kurulumu: Default temayı ilgili yere kopyalar.
    rake integrate                 # isolate ile izole edilen post'u tekrar yerine alır
    rake isolate[filename]         # Çok postunuz olduğunda işe yarar. O an için sadece tek bir post'la çalışıp geri kalanları saklar. sonra -isolate- ile geri döner.
    rake list                      # Rake task'ları göster (rake -T data detaylı)
    rake new_page[filename]        # Yeni sayfa üret: source/(filename)/index.markdown
    rake new_post[title]           # Yeni post üret: source/_posts
    rake preview                   # Web tarayıcısında siteyi önizleme
    rake push                      # public/ folder'ı github pages'a yolla
    rake rsync                     # Siteyi -rsync- ile deploy et / sunucuna yolla
    rake set_root_dir[dir]         # Root dizini belirle
    rake setup_github_pages[repo]  # Github Pages deployment için _deploy/ dizinini ve branch'ini ayarla
    rake update_source[theme]      # source/'u ource.old/ yap, tema güncellemelerini kur, source/_includes/navigation.html'i source.old/ daki navigation'la değiştir
    rake update_style[theme]       # sass/'ı sass.old/ yap, sass tema güncellemelerini kur, sass/custom/'ı sass.old/custom/ ile değiştir
    rake watch                     # Dosyalardaki değişiklikleri dinler. Preview için kullanılır.

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

### Blog Post

![Octopress Türkçe - Post Detay][scr-002]  

    rake new_post["post başlığı"]
    
    rake new_post["Merhaba Dünya"]
    # source/_posts/2012-11-11-merhaba-dunya.markdown

Blog post şablonu aşağıdaki gibidir:
```yaml
    ---
    layout: post
    title: "Merhaba Dünya"
    date: 2012-11-11 15:53
    comments: true
    categories: [ kategori1, kategori2 ]
    tags: [ etiket1, etiket2 ]
    description: "Açıklama"
    keywords: "kelime1, kelime2"
    # asides: []
    ---
    Kısa açıklama...
    <!-- more -->
```
`comments`: true / false, **disqus** ile gelen yorum olayını aç/kapa

`categories`: [katergori1, katergori2, ...., n]

`tags`: [etiket1, etiket2, ...., n]

`description` ve `keywords`: üretilen html için:
```html
<meta name="description" content="Açıklama">
<meta name="keywords" content="kelime1, kelime2">
```

![Octopress Türkçe - Blog Arşivi][scr-005]  
![Octopress Türkçe - Etiket Arşivi][scr-003]  
![Octopress Türkçe - Kategori Arşivi][scr-004]  



### Sayfa
![Octopress Türkçe - Sayfa][scr-006]  

Düz sayfalar oluşturmanızı sağlar.

    rake new_page["sunumlar"]                   # /source/sunumlar/index.markdown şeklinde üretir.
    rake new_page["sunumlar/sayfa.html"]        # /source/sunumlar/sayfa.html şeklinde üretir.

Kullandığı şablon:

```yaml
    ---
    layout: page
    title: "Hakkımda"
    comments: false
    sharing: false
    footer: false
    description: "Hakkımda sayfası"
    keywords: "kelime1, kelime2"
    # asides: []
    ---
```

yani, **footer**'ı, **sharing**'i ve **comment**'i olmayan bir blog post
sayfası gibi... `description`, `keywords` opsiyonel. Eğer isterseniz sayfaya
göre özel `asides` da ekleyebilirsiniz.

Örneğin sadece bu sayfa için:
```yaml
asides: [
    custom/asides/hakkimda.html,
]
```

derseniz, sağ tarafta sadece belirttiğiniz `aside` render edilir.

---

## Ön İzleme, Üretme

    rake generate   # postları ve sayfaları public/ altına üretir
    rake watch      # source/ ve sass/ folder'larını dinler ve duruma göre yeniden üretir
    rake preview    # dinler ve kendi içinde gelen web sunucusunu çalıştırır

Ne yaptığımıza bakmak için:

    rake generate && rake preview

ve browser açıp: [http://localhost:4000](http://localhost:4000)

Eğer [Pow][pow] kullanıyorsanız:

    cd ~/.pow
    ln -s /path/to/octopress octopress
    cd /path/to/octopress
    rake watch

diyip, [http://octopress.dev](http://octopress.dev) yapabilirsiniz.

---

## Kullanılan Şablon (Templating) Dili, İçerik

[Liquid][liquid] kullanılıyor. Ayrıca [Jekyll][jekyll]'a da bakmanızı öneririm.


## Backtick Code Block: Kaynak Kodu Paylaşımı
Örnekler [orijinal](http://octopress.org/docs/blogging/code/) sayfadan alınmıştır.

    ``` [language] [title] [url] [link text]
    code snippet
    ```

    # ruby kodu
    # başlık: Discover if a number is prime
    # ilgili web adresi: http://www.noulakaz.net/weblog/2007/03/18/a-regular-expression-to-check-for-prime-numbers/
    # ilgili web adresi linkinin teksti: Source Article
    
    ``` ruby Discover if a number is prime http://www.noulakaz.net/weblog/2007/03/18/a-regular-expression-to-check-for-prime-numbers/ Source Article
    class Fixnum
      def prime?
        ('1' * self) !~ /^1?$|^(11+?)\1+$/
      end
    end
    ```


---

## Eklentiler (Pluginler)

### Excerpts
Post içinde `<!--more-->` kullanabilirsiniz.


### HTML5 Video Tag
Örnekler [orijinal](http://octopress.org/docs/plugins/video-tag/) sayfadan alınmıştır.
[Ekran görüntüsü için tıklayın][scr-007].

    {% video url/to/video [width height] [url/to/poster] %}
    {% video http://www.site.com/video.mp4 [genişlik yükseklik] [http://www.site.com/poster-resmi.png] %}
    
    {% video http://s3.imathis.com/video/zero-to-fancy-buttons.mp4 640 320 http://s3.imathis.com/video/zero-to-fancy-buttons.png %}


### Image Tag
Örnekler [orijinal](http://octopress.org/docs/plugins/image-tag/) sayfadan alınmıştır.

    {% img [class names] /path/to/image [width] [height] [title text [alt text]] %}
    {% img [css classlar] http://www.site.com/resim.jpg [genişlik] [yükseklik] [başlık [alt]] %}

    {% img http://placekitten.com/890/280 %}
    {% img left http://placekitten.com/320/250 Place Kitten #2 %}
    {% img right http://placekitten.com/300/500 150 250 Place Kitten #3 %}
    {% img right http://placekitten.com/300/500 150 250 'Place Kitten #4' 'An image of a very cute kitten' %}


### Block quote
Örnekler [orijinal](http://octopress.org/docs/plugins/blockquote/) sayfadan alınmıştır.

    {% blockquote [author[, source]] [link] [source_link_title] %}
    Quote string
    {% endblockquote %}

    {% blockquote %}
    Last night I lay in bed looking up at the stars in the sky and I thought to myself, where the heck is the ceiling.
    {% endblockquote %}

    {% blockquote Douglas Adams, The Hichhikers Guide to the Galaxy %}
    Flying is learning how to throw yourself at the ground and miss.
    {% endblockquote %}

    {% blockquote @allanbranch https://twitter.com/allanbranch/status/90766146063712256 %}
    Over the past 24 hours I've been reflecting on my life & I've realized only one thing. I need a medieval battle axe.
    {% endblockquote %}

    {% blockquote Seth Godin http://sethgodin.typepad.com/seths_blog/2009/07/welcome-to-island-marketing.html Welcome to Island Marketing %}
    Every interaction is both precious and an opportunity to delight.
    {% endblockquote %}


### Pull quote
Örnekler [orijinal](http://octopress.org/docs/plugins/pullquote/) sayfadan alınmıştır.

    {% pullquote %}
    Surround your paragraph with the pull quote tags. Then when you come to
    the text you want to pull, {" surround it like this "} and that's all there is to it.
    {% endpullquote %}


### Code Blocks
Örnekler [orijinal](http://octopress.org/docs/plugins/codeblock/) sayfadan alınmıştır.

    {% codeblock [title] [lang:language] [url] [link text] %}
    code snippet
    {% endcodeblock %}

    {% codeblock %}
    Awesome code snippet
    {% endcodeblock %}

    {% codeblock lang:objc %}
    [rectangle setX: 10 y: 10 width: 20 height: 20];
    {% endcodeblock %}

    {% codeblock Time to be Awesome - awesome.rb %}
    puts "Awesome!" unless lame
    {% endcodeblock %}

    {% codeblock Here's an example .rvmrc file. lang:ruby %}
    rvm ruby-1.8.6 # ZOMG, seriously? We still use this version?
    {% endcodeblock %}

    {% codeblock Javascript Array Syntax lang:js http://j.mp/pPUUmW MDN Documentation %}
    var arr1 = new Array(arrayLength);
    var arr2 = new Array(element0, element1, ..., elementN);
    {% endcodeblock %}


### Gist Tag
Herhangi bir `gist`i entegre edebilirsiniz.

    {% gist GIST_ID %}
    
    # https://gist.github.com/4014521
    {% gist 4014521 %}


### Include Code
Örnekler [orijinal](http://octopress.org/docs/plugins/include-code/) sayfadan alınmıştır.

    {% include_code [title] [lang:language] path/to/file %}
    {% include_code [başlık] [lang:dil] dizin/dosya %}

Örnek dosyanız: `source/downloads/code/test.js` da duruyorsa;

    {% include_code test.js %}

şeklinde kullanabilirsiniz. Ya da, `source/downloads/code/ruby/test.rb` şeklindeyse:

    {% include_code Add to_fraction for floats ruby/test.rb %}

İstediğiniz dil türünü de `lang` ile verebilirsiniz.

    {% include_code test.coffee lang:coffeescript %}

Desteklenen diller:

    abap
    antlr
    antlr-as
    antlr-csharp
    antlr-cpp
    antlr-java
    antlr-objc
    antlr-perl
    antlr-python
    antlr-ruby
    as
    as3
    apacheconf
    applescript
    asy
    bbcode
    bash
    console
    bat
    befunge
    boo
    brainfuck
    c
    csharp
    cpp
    cmake
    css
    css+django
    css+genshitext
    css+mako
    css+myghty
    css+php
    css+erb
    css+smarty
    cheetah
    clojure
    common-lisp
    cython
    d
    dpatch
    control
    sourceslist
    delphi
    diff
    django
    dylan
    erb
    ragel-em
    erlang
    erl
    evoque
    fortran
    gas
    glsl
    genshi
    genshitext
    pot
    Cucumber
    gnuplot
    go
    groff
    html
    html+cheetah
    html+django
    html+evoque
    html+genshi
    html+mako
    html+myghty
    html+php
    html+smarty
    haskell
    ini
    irc
    io
    java
    jsp
    js
    js+cheetah
    js+django
    js+genshitext
    js+mako
    js+myghty
    js+php
    js+erb
    js+smarty
    llvm
    lighty
    lhs
    logtalk
    lua
    moocode
    mxml
    basemake
    make
    mako
    matlab
    matlabsession
    minid
    modelica
    trac-wiki
    mupad
    mysql
    myghty
    nasm
    newspeak
    nginx
    numpy
    ocaml
    objective-c
    ooc
    php
    pov
    perl
    prolog
    python
    python3
    py3tb
    pytb
    pycon
    rebol
    rhtml
    ragel
    ragel-c
    ragel-cpp
    ragel-d
    ragel-java
    ragel-objc
    ragel-ruby
    raw
    redcode
    rb
    rbcon
    splus
    sql
    scala
    scheme
    smalltalk
    smarty
    squidconf
    tcl
    tcsh
    tex
    text
    vb.net
    vala
    vim
    xml
    xml+cheetah
    xml+django
    xml+evoque
    xml+mako
    xml+myghty
    xml+php
    xml+erb
    xml+smarty
    xslt
    yaml
    aspx-cs
    aspx-vb
    c-objdump
    cpp-objdump
    d-objdump
    objdump
    rst
    sqlite3


### Render Partial
Post ya da sayfa içine ayrıca birşeyler ekleyebilirsiniz. Daha detaylı
örnekler için [orijinal](http://octopress.org/docs/plugins/render-partial/) sayfaya
bakabilirsiniz.

    {% render_partial path/to/file %}
    {% render_partial docs/blogging/plugins/index.markdown %}


### jsFiddle
Aynı **Gist** gibi, [jsFiddle](http://jsfiddle.net/) kaynağı da ekleyebilirsiniz.

    {% jsfiddle shorttag [tabs] [skin] [height] [width] %}
    {% jsfiddle ccWP7 %}
    
    {% jsfiddle ccWP7 js,html,result %}


### Vimeo
Sitenize [Vimeo](http://vimeo.com) videoları eklemenize yarar.
    
    # http://vimeo.com/52177751
    {% vimeo 52177751 800 600 information %}

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

[scr-001]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-home.png
[scr-002]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-post-detail.png
[scr-003]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-tag-archive.png
[scr-004]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-category-archive.png
[scr-005]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-blog-archive.png
[scr-006]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-about.png
[scr-007]: https://raw.github.com/vigo/octopress/master/source/screen_shots/octopress-tr-plugin-video.png


[liquid]: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers
[jekyll]: https://github.com/mojombo/jekyll/wiki/Template-Data
[pow]: http://pow.cx/