import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HASIL DETEKSI"),
      backgroundColor: Colors.teal,),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("(NAMA PENYAKIT)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("SOLUSI / PENANGANAN:", style: TextStyle(fontSize: 16)),
            SizedBox(height: 5),
            Text("BLA BLA BLA", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
