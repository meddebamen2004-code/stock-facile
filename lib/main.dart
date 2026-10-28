import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'screens/tests_screen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Windows / Linux : SQLite passe par FFI
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'StockFacile',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('StockFacile'),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            ),
        
      ),
    );*/
    return MaterialApp(
    title: 'StockFacile',
    home: const TestsScreen(),
    );
  }
}
