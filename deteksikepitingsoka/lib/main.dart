import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() => runApp(const CrabApp());

class CrabApp extends StatelessWidget {
  const CrabApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deteksi Penyakit Kepiting Soka',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
