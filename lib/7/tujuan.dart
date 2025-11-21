import 'package:flutter/material.dart';

// Poin b: Pada Halaman Tujuan, tampilkan teks keterangan dan sebuah tombol
// yang berfungsi untuk kembali ke Halaman Utama.
class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Halaman Tujuan'),
        backgroundColor: Colors.deepOrange, // Sesuai gambar
        automaticallyImplyLeading: false, // Menghilangkan tombol back default
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.beach_access,
                size: 120,
                color: Colors.deepOrange,
              ),
              const SizedBox(height: 20),
              const Text(
                'Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). Metode push() akan menambahkan sebuah Route ke tumpukan (stack) yang dikelola oleh Navigator. Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                // Poin c: Gunakan perintah navigasi
                // Petunjuk a: Gunakan Navigator.pop()
                onPressed: () {
                  // Perintah untuk kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Sesuai gambar
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back_ios, size: 16),
                    SizedBox(width: 8),
                    Text('Kembali ke home'),
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