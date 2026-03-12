# 🛍️ Mini Katalog Uygulaması

Bu proje, Flutter eğitimi kapsamında geliştirilmiş, temel e-ticaret özelliklerini (ürün listeleme, arama, detay görüntüleme, favorilere ekleme ve sepet yönetimi) barındıran bir mobil uygulama taslağıdır. 

Eğitim yönergesinde belirtilen widget yapısı, sayfa geçişleri, UI tasarımı, veri modelleme (JSON simülasyonu) ve proje klasörleme mimarisi kriterlerine uygun olarak tasarlanmıştır.

<p align="center">
  <img src="/assets/anasayfa.png" width="20%" alt="Ana Sayfa" />
  &nbsp;&nbsp;&nbsp;&nbsp; <img src="/assets/ornekurundetayi.png" width="20%" alt="Ürün Detayı" />
</p>

## ✨ Öne Çıkan Özellikler

- **Gelişmiş Navigasyon & Animasyon:** Sayfalar arası geçişlerde `Named Routes` (İsimlendirilmiş Rotalar) kullanılmış ve listeleme ile detay sayfası arasındaki görsel geçişleri yumuşatmak için `Hero` animasyonları entegre edilmiştir.
- **Dinamik Arama ve Filtreleme:** Kullanıcılar ana sayfada ürünler arasında arama yapabilir. Arama algoritması, kullanıcı deneyimini artırmak için Türkçe karakter (ı, ş, ğ vb.) duyarlılığına sahiptir.
- **Veri Modelleme:** `Product` model sınıfı oluşturulmuş olup, veriler `fromJson` ve `toJson` metotları ile JSON mantığına uygun olarak simüle edilmiştir.
- **Yerel Varlık Yönetimi:** Uygulama içi görseller internetten (`network`) değil, proje içerisine dahil edilen `assets` klasöründen okunarak performans artırılmıştır.
- **Sepet Simülasyonu & Sepet Rozeti:** Kullanıcılar detay sayfasından ürünleri sepete ekleyebilir, miktarını artırıp azaltabilir. Ana sayfadaki sepet ikonunda, sepetteki ürün sayısını gösteren dinamik bir rozet (badge) bulunur.
- **Favori Sistemi:** Kullanıcılar beğendikleri ürünleri favorilerine ekleyip çıkarabilir ve "Favorilerim" sayfasından takip edebilirler.

<p align="center">
  <img src="/assets/sepetim.png" width="20%" alt="Sepetim" />
  &nbsp;&nbsp;&nbsp;&nbsp; <img src="/assets/favoriler.png" width="20%" alt="Favoriler" />
</p>

## 🛠️ Kullanılan Teknolojiler ve Sürüm

- **SDK:** Flutter 3.x & Dart ^3.11.0
- **Geliştirme Ortamı:** Visual Studio Code / Mac
- **Test Ortamı:** iOS Simulator / Android Emulator
- **Paketler:** Sadece temel `material.dart` paketi kullanılmış, dışarıdan ekstra kütüphane (state management vb.) dahil edilmeden temel Flutter yapıları (StatefulWidget) ile çözüm üretilmiştir.

## 🚀 Projeyi Çalıştırma Adımları

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları izleyebilirsiniz:

1. Repoyu bilgisayarınıza klonlayın:
   ```bash
   git clone [https://github.com/iamsevval/mobile_flutter_project.git](https://github.com/iamsevval/mobile_flutter_project.git)