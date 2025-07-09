import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ShopSavvyApp());
}

class ShopSavvyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopSavvy',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}