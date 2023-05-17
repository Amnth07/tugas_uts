import 'package:flutter/material.dart';
import 'package:tugas_uts/home/beranda.dart';
import 'package:tugas_uts/home/form.dart';
import 'package:tugas_uts/home/hasil_foto.dart';
import 'package:tugas_uts/home/jenis_kamera.dart';
import 'package:tugas_uts/home/profile.dart';
import 'package:tugas_uts/home/register.dart';

void main() => runApp(MenuApp());

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amin Photograph',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
        '/beranda':(context) => Beranda(),
        '/register': (context) => RegisterForm(),
        '/menu':(context) => MenuPage(),
        '/jenis_kamera': (context) => jenis_kamera(),
        '/hasil_poto': (context) => hasil_poto(),
        '/profile': (context) => Profile(),
      },
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  final List<String> _pageRoutes = [
    '/',
    '/jenis_kamera',
    '/hasil_poto',
    '/profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _pageRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sewa kamera'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Image.asset(
                  'assets/images/kmra.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Selamat datang di toko sewa kamera kami',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Beranda'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Jenis Kamera'),
              onTap: () {
                Navigator.pushNamed(context, '/jenis_kamera');
              },
            ),
            ListTile(
              title: Text('Hasil Potrait'),
              onTap: () {
                Navigator.pushNamed(context, '/hasil_poto');
              },
            ),
            ListTile(
              title: Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}
