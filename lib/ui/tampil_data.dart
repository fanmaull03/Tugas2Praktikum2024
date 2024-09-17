import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan",
            style: TextStyle(
              fontFamily: 'Poppins',
              letterSpacing: 2,
              color: Color(0xFF008F11),
            )),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun.",
              style: const TextStyle(
                fontFamily: 'Times New Roman',
                color: Color(0xFF008F11),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
