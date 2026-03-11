import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
          const SizedBox(height: 16),
          const Text('Sepetiniz boş', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Text('Alışverişe başlamak için ürün ekleyin', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildCartList() {
    return ListView.builder(
      itemCount: globalCartItems.length,
      itemBuilder: (context, index) {
        final product = globalCartItems[index];
        return ListTile(
          leading: Container(
            width: 60, height: 60,
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
            child: Image.network(product.imageUrl),
          ),
          title: Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('\$${product.price}'),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
            onPressed: () {
              setState(() {
                globalCartItems.removeAt(index); 
              });
            },
          ),
        );
      },
    );
  }

  Widget _buildCheckoutButton() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, 
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: () {
          // Ödeme simülasyonu
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Tebrikler!"),
              content: const Text("Siparişiniz başarıyla alındı."),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Tamam"),
                )
              ],
            ),
          );
        },
        child: const Text('Ödemeye Geç', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}