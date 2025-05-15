import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:typed_data';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  String nama = '';
  String lokasi = '';
  String deskripsi = '';
  List<Map<String, String>> riwayat = [];

  Future<Uint8List> _generatePdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.ListView(
          children: riwayat.map((e) => pw.Text("${e['nama']} - ${e['lokasi']} - ${e['deskripsi']}" )).toList(),
        ),
      ),
    );
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Pemeriksaan")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Nama Pembudidaya :"),
                    validator: (val) => val!.isEmpty ? 'Wajib diisi' : null,
                    onSaved: (val) => nama = val!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Lokasi Budidaya :"),
                    onSaved: (val) => lokasi = val!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "No. Handphone :"),
                    onSaved: (val) => lokasi = val!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Deskripsi Gejala"),
                    maxLines: 3,
                    onSaved: (val) => deskripsi = val!,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text("Kirim"),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        setState(() {
                          riwayat.add({
                            'nama': nama,
                            'lokasi': lokasi,
                            'deskripsi': deskripsi,
                          });
                        });
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Data dikirim!"),
                        ));
                      }
                    },
                  )
                ],
              ),
            ),
            Divider(height: 40),
            Text("Riwayat Pemeriksaan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            ...riwayat.map((item) => ListTile(
              title: Text(item['nama']!),
              subtitle: Text("${item['lokasi']} - ${item['deskripsi']}"),
            )),
            if (riwayat.isNotEmpty)
              ElevatedButton.icon(
                icon: Icon(Icons.picture_as_pdf),
                label: Text("Ekspor PDF"),
                onPressed: () async {
                  final pdfFile = await _generatePdf();
                  await Printing.layoutPdf(onLayout: (_) => pdfFile);
                },
              ),
          ],
        ),
      ),
    );
  }
}
