import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map product;
  const ProductDetailScreen({super.key, required this.product});

  Future<void> addToCart(Map item) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> cart = prefs.getStringList('cart') ?? [];
    cart.add(json.encode(item));
    await prefs.setStringList('cart', cart);
  }

  Future<void> saveForLater(Map item) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> wishlist = prefs.getStringList('wishlist') ?? [];
    wishlist.add(json.encode(item));
    await prefs.setStringList('wishlist', wishlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product['thumbnail'], height: 200),
            const SizedBox(height: 16),
            Text(product['title'], style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('\$${product['price']}', style: const TextStyle(fontSize: 20)),
            Text('Rating: ⭐ ${product['rating']}'),
            const SizedBox(height: 10),
            Text(product['description']),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      addToCart(product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to cart')),
                      );
                    },
                    child: const Text('Add to Cart'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      saveForLater(product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Saved for later')),
                      );
                    },
                    child: const Text('Save for Later'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
