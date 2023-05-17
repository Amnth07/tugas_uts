import 'package:flutter/material.dart';
import 'package:tugas_uts/home/detail_kamera.dart';
import 'package:tugas_uts/home/menu.dart';

void main() => runApp(MenuApp());

class jenis_kamera extends StatelessWidget {
  final List<Map<String, dynamic>> cameras = [
    {
      'name': 'Kamera DSLR Canon',
      'image': 'assets/images/Canon.jpg',
      'price': 'Rp 50.000',
      'time': 'satu hari',
      'deskripsi': 'kamera ini memiliki sensor full frame 24Megapixel dan dibekali lensa 18-55mm',
    },
    {
      'name': 'Kamera Mirrorless',
      'image': 'assets/images/sony.jpg',
      'price': 'Rp 100.000',
      'time': 'satu hari',
      'deskripsi': 'Kamera ini dibekali dengan sensor apsc 24 megapixel dengan bawaan lensa 16-45mm',
    },
    {
      'name': 'Drone',
      'image': 'assets/images/drone.jpg',
      'price': 'Rp 500.000',
      'time': 'satu hari',
      'deskripsi': 'drone ini dibekali dengan kamera beresolusi 4K 60fps sehingga gambar bisa terlihat jernih',
    },
    {
      'name': 'Kamera shooting',
      'image': 'assets/images/shooting.jpg',
      'price': 'Rp 2.000.000',
      'time': 'satu hari',
      'deskripsi': 'kamera shooting dengan resolusi 8k sehingga menjadikan gambar tidak pecah dan burik',
    },
    {
      'name': 'Handycam',
      'image': 'assets/images/handycam.jpg',
      'price': 'Rp 50.000',
      'time': 'satu hari',
      'deskripsi': 'handycam dengan resolusi 16megapixel,kamera ini cocok untuk merekam video dan mudah di bawa kemana mana',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Jenis Kamera'),
      ),
      body: ListView.builder(
        itemCount: cameras.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    cameras[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(cameras[index]['name']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cameras[index]['price']),
                    SizedBox(height: 4.0),
                    Text(
                      cameras[index]['deskripsi'],
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailKamera(
                          camera: cameras[index],
                        ),
                      ),
                    );
                  },
                  child: Text('Pilih'),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
