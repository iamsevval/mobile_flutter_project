class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // 1. JSON verisini Dart nesnesine çevirme (fromJson)
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: double.parse(json['price'].toString()),
      imageUrl: json['imageUrl'],
    );
  }

  // 2. Dart nesnesini JSON verisine çevirme (toJson)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}

// Simülasyon Veritabanı
final List<Product> dummyProducts = [
  Product(
    id: '1',
    title: 'Kablosuz Kulaklık',
    description: 'Yüksek ses kalitesine sahip, gürültü engelleyici kablosuz kulaklık.',
    price: 1299.99,
    imageUrl: 'assets/kulaklik.jpg',
  ),
  Product(
    id: '2',
    title: 'Akıllı Saat',
    description: 'Adım sayar, nabız ölçer ve uyku takibi özellikli akıllı saat.',
    price: 2499.50,
    imageUrl: 'assets/saat.jpg',
  ),
  Product(
    id: '3',
    title: 'Mekanik Klavye',
    description: 'RGB aydınlatmalı, oyunculara özel mekanik hisli klavye.',
    price: 850.00,
    imageUrl: 'assets/klavye.jpg',
  ),
  Product(
    id: '4',
    title: 'Sırt Çantası',
    description: 'Su geçirmez kumaştan üretilmiş, laptop bölmeli günlük çanta.',
    price: 450.00,
    imageUrl: 'assets/canta.jpg',
  ),
];

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

List<CartItem> globalCartItems = [];