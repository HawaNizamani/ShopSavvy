import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'wish_list_screen.dart';

void main() {
  runApp(const ShopSavvyApp());
}

class ShopSavvyApp extends StatelessWidget {
  const ShopSavvyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopSavvy',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
