import 'package:flutter/material.dart';
import 'result_page.dart';

class FormPage extends StatelessWidget {
  final bool fromDetect;
  const FormPage({super.key, this.fromDetect = false});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _locationController = TextEditingController();
    final _phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("FORM DATA"),
      backgroundColor: Colors.teal,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: "Nama Pembudidaya")),
            TextField(controller: _locationController, decoration: InputDecoration(labelText: "Lokasi Budidaya")),
            TextField(controller: _phoneController, decoration: InputDecoration(labelText: "No. Handphone")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (fromDetect) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const ResultPage()),
                  );
                }
              },
              child: const Text("KIRIM"),
            ),
          ],
        ),
      ),
    );
  }
}
