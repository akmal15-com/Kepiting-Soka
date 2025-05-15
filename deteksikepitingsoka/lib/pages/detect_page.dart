import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'form_page.dart';

class DetectPage extends StatefulWidget {
  const DetectPage({super.key});

  @override
  State<DetectPage> createState() => _DetectPageState();
}

class _DetectPageState extends State<DetectPage> {
  File? _image;
  final picker = ImagePicker();
  
  Future<void> getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DETEKSI PENYAKIT"),
      backgroundColor: Colors.teal,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "MARI DETEKSI PENYAKIT KEPITING SOKAMU",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Tampilkan gambar jika sudah dipilih
            _image != null
                ? Image.file(_image!, height: 200)
                : const Icon(Icons.image, size: 100, color: Colors.grey),

            const SizedBox(height: 20),

            // Tombol kamera dan galeri
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => getImage(ImageSource.camera),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("KAMERA"),
                ),
                ElevatedButton.icon(
                  onPressed: () => getImage(ImageSource.gallery),
                  icon: const Icon(Icons.photo),
                  label: const Text("GALERI"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Tombol submit selalu aktif
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FormPage(fromDetect: true),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text("SUBMIT"),
            ),
          ],
        ),
      ),
    );
  }
}
