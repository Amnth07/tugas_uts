import 'package:flutter/material.dart';
import 'package:tugas_uts/home/pembayaran.dart';

class DetailKamera extends StatelessWidget {
  final Map<String, dynamic> camera;

  DetailKamera({required this.camera});

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content: Text('Apakah kamera yang Anda pilih sudah sesuai?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog konfirmasi
                _navigateToPayment(context); // Berpindah ke halaman pembayaran
              },
              child: Text('Ya'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog konfirmasi
              },
              child: Text('Tidak'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToPayment(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pembayaran(
          camera: camera,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kamera'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            camera['image'],
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            camera['name'],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            camera['price'],
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8.0),
          Text(
            '',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              _showConfirmationDialog(context); // Menampilkan kotak dialog konfirmasi
            },
            child: Text('Sewa'),
          ),
        ],
      ),
    );
  }
}
