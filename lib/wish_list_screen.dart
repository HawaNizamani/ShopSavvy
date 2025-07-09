import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<Map> wishlist = [];

  Future<void> loadWishlist() async {
    final prefs = await SharedPreferences.getInstance();
    final items = prefs.getStringList('wishlist') ?? [];
    setState(() {
      wishlist = items.map((e) => json.decode(e) as Map).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadWishlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wishlist')),
      body: wishlist.isEmpty
          ? const Center(child: Text('No saved items'))
          : ListView.builder(
        itemCount: wishlist.length,
        itemBuilder: (context, index) {
          final item = wishlist[index];
          return ListTile(
            leading: Image.network(item['thumbnail'], width: 50),
            title: Text(item['title']),
            subtitle: Text('\$${item['price']}'),
          );
        },
      ),
    );
  }
}
