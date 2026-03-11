# 🛍️ Mini Katalog Uygulaması

Bu proje, Flutter eğitimi kapsamında geliştirilmiş, temel e-ticaret özelliklerini (ürün listeleme, arama, detay görüntüleme ve sepet) barındıran bir mobil uygulama taslağıdır. 

Eğitim yönergesinde belirtilen widget yapısı, sayfa geçişleri, UI tasarımı, veri modelleme (JSON simülasyonu) ve proje klasörleme mimarisi kriterlerine %100 uygun olarak tasarlanmıştır.

## ✨ Öne Çıkan Özellikler

- **Gelişmiş Navigasyon:** Sayfalar arası geçişlerde `Named Routes` (İsimlendirilmiş Rotalar) ve veri taşımak için `Route Arguments` kullanılmıştır.
- **Dinamik Arama ve Filtreleme:** Kullanıcılar ana sayfada ürünler arasında arama yapabilir. Arama motoru, kullanıcı deneyimini artırmak için Türkçe karakter (ı, ş, ğ vb.) duyarlılığına sahiptir.
- **Veri Modelleme:** `Product` model sınıfı oluşturulmuş olup, veriler `fromJson` ve `toJson` metotları ile JSON mantığına uygun olarak simüle edilmiştir.
- **Yerel Varlık Yönetimi:** Uygulama içi görseller internetten (`network`) değil, proje içerisine dahil edilen `assets` klasöründen okunarak performans artırılmıştır.
- **Sepet Simülasyonu:** Kullanıcılar detay sayfasından ürünleri sepete ekleyebilir ve sepet sayfasında bu ürünleri listeleyip sepetten çıkarabilir.

## 🛠️ Kullanılan Teknolojiler ve Sürüm

- **SDK:** Flutter 3.x & Dart ^3.11.0
- **Geliştirme Ortamı:** Visual Studio Code / Mac
- **Test Ortamı:** iOS Simulator / Android Emulator
- **Paketler:** Sadece temel `material.dart` paketi kullanılmış, dışarıdan ekstra kütüphane dahil edilmemiştir.

## 🚀 Projeyi Çalıştırma Adımları

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları izleyebilirsiniz:

1. Repoyu bilgisayarınıza klonlayın:
   ```bash
   git clone [https://github.com/iamsevval/mobile_flutter_project](https://github.com/iamsevval/mobile_flutter_project)