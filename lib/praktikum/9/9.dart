import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stateful Widget Demo',
      home: LikeButtonPage(),
    );
  }
}


// Langkah a: Membuat Stateful Widget baru
class LikeButtonPage extends StatefulWidget {
  const LikeButtonPage({super.key});

  @override
  State<LikeButtonPage> createState() => LikeButtonPageState();
}

class LikeButtonPageState extends State<LikeButtonPage> {
  // Deklarasi variabel state (Langkah a)
  bool _isLiked = false; // state untuk status like
  int _likeCount = 10;   // nilai awal jumlah like

  // Langkah b: Method untuk mengubah status dan jumlah like
  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likeCount--;
        _isLiked = false;
      } else {
        _likeCount++;
        _isLiked = true;
      }
    });
  }

  // Langkah c: Method build untuk tampilan UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Like Button')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tombol Like dengan Ikon Hati
            IconButton(
              icon: Icon(
                // Kondisi: jika _isLiked true ikon penuh, jika false ikon border
                _isLiked ? Icons.favorite : Icons.favorite_border,
                // Kondisi: jika _isLiked true warna merah, jika false warna abu-abu
                color: _isLiked ? Colors.red : Colors.grey,
                size: 48,
              ),
              onPressed: _toggleLike, // Memanggil method _toggleLike saat ditekan
            ),
            // Menampilkan teks jumlah like
            Text(
              '$_likeCount likes',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}