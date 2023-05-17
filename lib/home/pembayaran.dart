import 'package:flutter/material.dart';
import 'package:tugas_uts/home/halamanberhasil.dart';

class Pembayaran extends StatelessWidget {
  final Map<String, dynamic> camera;

  Pembayaran({required this.camera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pembayaran'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Image.asset(
                camera['image'],
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
              title: Text('Kamera: ${camera['name']}'),
            ),
            ListTile(
              title: Text('Waktu Sewa: ${camera['time']}'),
            ),
            ListTile(
              title: Text('Subtotal: ${camera['price']}'),
            ),
            ListTile(
              title: Text('Denda: -'), // Anda dapat mengganti tanda '-' dengan nilai denda yang sesuai
            ),
            SizedBox(height: 16.0),
         ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HalamanBerhasil(),
      ),
    );
  },
  child: Text('Bayar'),
),

          ],
        ),
      ),
    );
  }
}
