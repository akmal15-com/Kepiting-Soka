import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 80, color: Colors.teal),
            SizedBox(height: 20),
            Text(
              "Deteksi Penyakit Kepiting Soka",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              "Versi 1.0.0",
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 24),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Aplikasi ini dikembangkan untuk membantu petambak mendeteksi penyakit pada kepiting soka secara cepat dan akurat dengan bantuan teknologi mobile dan AI.\n\n"
                  "Pengembang:\nMahasiswa Teknik Komputer\nUniversitas Borneo Tarakan\n"
                  "Email: mahasiswatekom2022@gmail.com\n"
                  "Kontak: 082149634330",
                  style: TextStyle(fontSize: 16, height: 1.5),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
