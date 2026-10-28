import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StockFacile',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('StockFacile'),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            ),
        
      ),
    );
  }
}
