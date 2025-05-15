import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/detect_page.dart';
import 'pages/form_page.dart';
import 'pages/about_page.dart';

void main() => runApp(CrabApp());

class CrabApp extends StatefulWidget {
  @override
  _CrabAppState createState() => _CrabAppState();
}

class _CrabAppState extends State<CrabApp> {
  int currentIndex = 0;

  final pages = [
    HomePage(),
    DetectPage(),
    FormPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deteksi Penyakit Kepiting Soka',
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.teal,
          onTap: (i) => setState(() => currentIndex = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Deteksi'),
            BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Form'),
            BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Tentang'),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
