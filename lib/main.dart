import 'package:flutter/material.dart';
import 'package:tugas_uts/home/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Penjualan Motor',
      initialRoute: '/',
      routes: {
        '/': (context) => MenuApp(),
      },
    );
  }
}