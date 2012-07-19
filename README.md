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

Derleme işlemine komut satırından başlamadan önce;

    export CPPFLAGS=-I/usr/local/Cellar/readline/6.2.4/include
    export LDFLAGS=-L/usr/local/Cellar/readline/6.2.4/lib

ve;

    rbenv install 1.9.2-p290
    rbenv rehash

ve daha sonra da;

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/

yapmanız gerekiyor...

## Kurulum

    gem install bundler
    bundle

Test etmek için:

    rake generate
    rake preview

sonra [http://localhost:4000][lcl]

---

## Ayarlar
Pek yakında

---

## Web Sunucusuna Yükleme (Deployment)
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