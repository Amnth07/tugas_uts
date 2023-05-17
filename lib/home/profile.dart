import 'package:flutter/material.dart';
import 'package:tugas_uts/home/menu.dart';

void main() => runApp(MenuApp());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/min.jpg'), // Sesuaikan path gambar di sini
              radius: 30,
            ),
            title: Text(
              'Amin tohari',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('085710302359'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('talang keramat'),
          ),
        ],
      ),
    );
  }
}
