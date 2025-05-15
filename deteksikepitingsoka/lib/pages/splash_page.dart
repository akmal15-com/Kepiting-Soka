import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.bug_report, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            const Text("AYO DETEKSI PENYAKIT KEPITING SOKA ANDA!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const HomePage())),
              child: const Text("MULAI SEKARANG"),
            )
          ],
        ),
      ),
    );
  }
}
