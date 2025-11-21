import 'package:flutter/material.dart';
import 'home.dart'; // Impor file home.dart
import 'tujuan.dart'; // Impor file tujuan.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Petunjuk b: Pastikan semua halaman sudah terdaftar di dalam routes
      initialRoute: '/', // Rute awal saat aplikasi dibuka
      routes: {
        '/': (context) => const HomePage(), // Rute untuk Halaman Utama
        '/tujuan': (context) => const TujuanPage(), // Rute untuk Halaman Tujuan
      },
    );
  }
}