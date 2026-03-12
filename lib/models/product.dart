class Product {
  final String id;
  final String title;
  final String subtitle; 
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite; 

  final String spec1Label;
  final String spec1Value;
  final String spec2Label;
  final String spec2Value;
  final String spec3Label;
  final String spec3Value;

  Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false, 
    required this.spec1Label,
    required this.spec1Value,
    required this.spec2Label,
    required this.spec2Value,
    required this.spec3Label,
    required this.spec3Value,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'] ?? '',
      description: json['description'],
      price: double.parse(json['price'].toString()),
      imageUrl: json['imageUrl'],
      isFavorite: json['isFavorite'] ?? false,
      spec1Label: json['spec1Label'] ?? '',
      spec1Value: json['spec1Value'] ?? '',
      spec2Label: json['spec2Label'] ?? '',
      spec2Value: json['spec2Value'] ?? '',
      spec3Label: json['spec3Label'] ?? '',
      spec3Value: json['spec3Value'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'isFavorite': isFavorite,
      'spec1Label': spec1Label,
      'spec1Value': spec1Value,
      'spec2Label': spec2Label,
      'spec2Value': spec2Value,
      'spec3Label': spec3Label,
      'spec3Value': spec3Value,
    };
  }
}

// Simülasyon Veritabanı
final List<Product> dummyProducts = [
  Product(
    id: '1',
    title: 'Kablosuz Kulaklık',
    subtitle: 'Müziği hisset. Gürültüyü unut.',
    description: 'Yeni nesil aktif gürültü engelleme teknolojisi ile dış dünyayı tamamen kapatın. Stüdyo kalitesinde ses deneyimi sunan bu kulaklık, 40 saate varan pil ömrüyle gün boyu kesintisiz müzik keyfi sağlar. Ergonomik tasarımı sayesinde uzun süreli kullanımlarda bile kulağınızı rahatsız etmez.',
    price: 1299.99,
    imageUrl: 'assets/kulaklik.jpg',
    spec1Label: 'DRIVER', spec1Value: '40 mm',
    spec2Label: 'ANC', spec2Value: 'Active',
    spec3Label: 'BATTERY', spec3Value: '40 Hours',
  ),
  Product(
    id: '2',
    title: 'Akıllı Saat',
    subtitle: 'Sağlığınız bileğinizde.',
    description: 'Gelişmiş sensörleri sayesinde nabız, kan oksijen seviyesi ve uyku kalitenizi 7/24 takip eder. 100\'den fazla spor modu ile antrenmanlarınızı detaylı analiz edebilir, hedeflerinize daha hızlı ulaşabilirsiniz. Suya ve toza dayanıklı yapısıyla her türlü zorlu koşula hazırdır.',
    price: 2499.50,
    imageUrl: 'assets/saat.jpg',
    spec1Label: 'SCREEN', spec1Value: '1.4 AMOLED',
    spec2Label: 'WATER', spec2Value: '5 ATM',
    spec3Label: 'SENSORS', spec3Value: 'Heart & SpO2',
  ),
  Product(
    id: '3',
    title: 'Mekanik Klavye',
    subtitle: 'Oyuncular için tasarlandı.',
    description: 'Özelleştirilebilir RGB aydınlatması ve mekanik switchleri ile oyun deneyiminizi bir üst seviyeye taşıyın. Hızlı tepki süresi ve anti-ghosting özelliği sayesinde en kritik anlarda bile komutlarınız anında algılanır. Alüminyum kasası şık bir görünüm sunar.',
    price: 850.00,
    imageUrl: 'assets/klavye.jpg',
    spec1Label: 'SWITCH', spec1Value: 'Red',
    spec2Label: 'LAYOUT', spec2Value: 'Turkish Q',
    spec3Label: 'LIGHT', spec3Value: 'RGB',
  ),
  Product(
    id: '4',
    title: 'Sırt Çantası',
    subtitle: 'Her an yanınızda.',
    description: 'Su geçirmez ve dayanıklı kumaşıyla eşyalarınızı her türlü hava koşulunda güvenle taşıyın. Geniş iç hacmi ve özel laptop bölmesi sayesinde günlük ihtiyaçlarınızı düzenli bir şekilde organize edebilirsiniz. Gizli cepleri ile değerli eşyalarınızı güvende tutun.',
    price: 450.00, 
    imageUrl: 'assets/canta.jpg',
    spec1Label: 'CAPACITY', spec1Value: '25 Liters',
    spec2Label: 'MATERIAL', spec2Value: 'Waterproof',
    spec3Label: 'LAPTOP', spec3Value: '15.6 inch',
  ),
];

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

List<CartItem> globalCartItems = [];