import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INPUT DATA",
            style: TextStyle(
                fontFamily: 'Times New Roman',
                letterSpacing: 2,
                color: Color(0xFF008F11))),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_pin,
              color: Color(0xFF008F11),
              size: 80,
            ),
            const SizedBox(height: 20), // Jarak antara ikon dan textbox nama
            _textboxNama(),
            const SizedBox(height: 20), // Jarak antara textbox nama dan NIM
            _textboxNIM(),
            const SizedBox(
                height: 20), // Jarak antara textbox NIM dan Tahun Lahir
            _textboxTahun(),
            const SizedBox(
                height:
                    20), // Jarak antara textbox Tahun Lahir dan tombol simpan
            _tombolSimpan(),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Times New Roman'), // Times New Roman
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF008F11)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF5A0A50)),
        ),
      ),
      controller: _namaController,
      style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Times New Roman'), // Times New Roman
      cursorColor: const Color(0xFF00CC00),
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Times New Roman'), // Times New Roman
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF008F11))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF5A0A50)),
        ),
      ),
      controller: _nimController,
      style:
          const TextStyle(color: Colors.white, fontFamily: 'Times New Roman'),
      cursorColor: const Color(0xFF00CC00),
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle:
            TextStyle(color: Colors.white, fontFamily: 'Times New Roman'),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF008F11))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF5A0A50)),
        ),
      ),
      controller: _tahunController,
      style:
          const TextStyle(color: Colors.white, fontFamily: 'Times New Roman'),
      cursorColor: const Color(0xFF00CC00),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00CC00),
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Times New Roman', // Menggunakan Times New Roman
          letterSpacing: 2,
        ),
      ),
      child: const Text('Simpan'),
    );
  }
}
