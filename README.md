Flutter Mini Katalog Projesi
-Bu proje, staj eğitimindeki Flutter haftası ödevi için geliştirilmiştir. Uygulama içerisinde bir teknoloji mağazasının ürün listesi ve detayları yer almaktadır.

-Neler Yapıldı?
GridView: Ürünlerin ana sayfada 2'li yan yana durması için GridView yapısı kullanıldı.
Modüler Yapı: Kodların karışmaması için models, screens ve widgets klasörleri oluşturuldu.
Navigasyon: Liste elemanlarına tıklandığında ürün detaylarını görmek için sayfa geçişleri eklendi.
Dart Model: Ürünlerin adı, fiyatı ve açıklaması için bir Product sınıfı oluşturularak veriler bu model üzerinden çekildi.

-Proje Dosya Yapısı
lib/models: Veri modeli (product.dart)
lib/screens: Ana sayfa ve detay sayfası ekranları
lib/widgets: Ürün kartı gibi tekrar kullanılan bileşenler
lib/main.dart: Uygulamanın başlangıç dosyası

-Çalıştırma
Proje Zapp.run veya herhangi bir Flutter ortamında main.dart dosyası üzerinden çalıştırılabilir.
