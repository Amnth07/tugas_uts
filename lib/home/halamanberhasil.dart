import 'package:flutter/material.dart';
import 'package:tugas_uts/home/menu.dart';

class HalamanBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Berhasil'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 80,
                color: Colors.green,
              ),
              SizedBox(height: 16.0),
              Text(
                'Berhasil!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuPage(),
                    ),
                  );
                },
                child: Text('Kembali ke Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
