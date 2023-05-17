import 'package:flutter/material.dart';
import 'package:tugas_uts/home/menu.dart';

void main() => runApp(MenuApp());

class hasil_poto extends StatelessWidget {
  final List<String> images = [
    'assets/images/min.jpg',
    'assets/images/min1.JPG',
    'assets/images/min2.JPG',
    'assets/images/min3.JPG',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman hasil potrait'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
