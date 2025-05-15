import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TENTANG"),
      backgroundColor: Colors.teal,),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Aplikasi ini dikembangkan untuk membantu petambak mendeteksi penyakit pada kepiting soka secara cepat dan akurat dengan bantuan teknologi mobile dan AI.",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
