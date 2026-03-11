import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double getTotalPrice() {
    double total = 0;
    for (var item in globalCartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Sepetim', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: globalCartItems.isEmpty 
        ? _buildEmptyCart() 
        : _buildCartList(),
      bottomNavigationBar: globalCartItems.isNotEmpty ? _buildCheckoutButton() : null,
    );
  }

  Widget _buildEmptyCart() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart_outlined, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 24),
          const Text('Sepetiniz boş', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Alışverişe başlamak için ürün ekleyin', style: TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () {
              // Kullanıcıyı Ana Sayfaya Geri Döndürür
              Navigator.pop(context);
            },
            child: const Text('Alışverişe Başla', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }

  Widget _buildCartList() {
    return ListView.builder(
      itemCount: globalCartItems.length,
      itemBuilder: (context, index) {
        final cartItem = globalCartItems[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Container(
            width: 60, height: 60,
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
            child: Image.asset(cartItem.product.imageUrl),
          ),
          title: Text(cartItem.product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('\$${cartItem.product.price}'),
          
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle_outline, color: Colors.black54),
                onPressed: () {
                  setState(() {
                    if (cartItem.quantity > 1) {
                      cartItem.quantity--; 
                    } else {
                      globalCartItems.removeAt(index); 
                    }
                  });
                },
              ),
              Text(
                '${cartItem.quantity}', 
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outline, color: Colors.black),
                onPressed: () {
                  setState(() {
                    cartItem.quantity++; 
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCheckoutButton() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Toplam Tutar:', style: TextStyle(fontSize: 18, color: Colors.grey)),
              Text(
                '\$${getTotalPrice().toStringAsFixed(2)}', 
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent)
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, 
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Tebrikler!"),
                    content: const Text("Siparişiniz başarıyla alındı."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            globalCartItems.clear(); 
                          });
                          Navigator.pop(context); 
                          Navigator.pop(context); 
                        },
                        child: const Text("Tamam"),
                      )
                    ],
                  ),
                );
              },
              child: const Text('Ödemeye Geç', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}