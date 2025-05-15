import 'package:flutter/material.dart';
import 'detect_page.dart';
import 'form_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final pages = [
    const HomeContent(),
    const DetectPage(),
    const FormPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BERANDA"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/gambar/LOGO CE.PNG',
              height: 100,
              fit: BoxFit.cover,
            ),
            const Text(
              "Selamat Datang!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Aplikasi ini membantu mendeteksi penyakit pada kepiting soka secara cepat dan mudah melalui analisis gambar.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Card(
              color: Colors.teal[50],
              child: const ListTile(
                leading: Icon(Icons.lightbulb, color: Colors.teal),
                title: Text("Tips Budidaya Sehat"),
                subtitle: Text(
                    "Jaga kualitas air, hindari overpopulasi, dan periksa kepiting secara rutin."),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "© 2025 Teknik Komputer\nMuhammad Akmaluddin - 2240304045\nKontak: support@kepitingsoka.id",
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  static Widget _menuButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.teal),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
