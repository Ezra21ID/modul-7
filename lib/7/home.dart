import 'package:flutter/material.dart';

// Poin a: Pada Halaman Utama, tampilkan teks judul aplikasi dan sebuah tombol
// yang berfungsi untuk menuju ke Halaman Tujuan.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Halaman Home'),
        backgroundColor: Colors.blue, // Sesuai gambar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.home,
                size: 120,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Pertama, kita perlu membuat dua halaman atau "routes" yang ingin kita tampilkan. Selanjutnya, kita gunakan Navigator untuk berpindah. Saat kita menekan tombol, halaman kedua ini akan membuka di atas halaman pertama.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                // Poin c: Gunakan perintah navigasi
                // Petunjuk a: Gunakan Navigator.pushNamed()
                onPressed: () {
                  // Perintah untuk pindah ke halaman tujuan menggunakan nama rute '/tujuan'
                  Navigator.pushNamed(context, '/tujuan');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ke halaman tujuan'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}