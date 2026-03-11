import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; 
import 'screens/cart_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(const MiniKatalogApp());
}

class MiniKatalogApp extends StatelessWidget {
  const MiniKatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Mini Katalog',             
      theme: ThemeData(                  
        primarySwatch: Colors.blue,
      ),
      
      
      initialRoute: '/', 
      
      routes: {
        '/': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
        '/details': (context) => const ProductDetailScreen(),
      },
    );
  }
}