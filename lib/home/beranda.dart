import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sewa Kamera'),
      ),
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login berhasil!'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: Text('Lanjutkan')),
          ]))
    );
  }
}
