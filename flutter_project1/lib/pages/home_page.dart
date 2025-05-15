import 'package:flutter/material.dart';
import 'detect_page.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beranda")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat datang di Aplikasi Deteksi Penyakit Kepiting Soka!",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("Mulai Deteksi"),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetectPage())),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                child: Text("Tentang Aplikasi"),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AboutPage())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
