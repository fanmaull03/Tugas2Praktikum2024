# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah 
```
flutter pub get
```
Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

Buat tampilan semenarik mungkin untuk dilihat.


Nama : Muhammad Ifan Sidiq Maulana

NIM : H1D022012

Shift Baru: E

PENJELASAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN:

1. Pengisian Data Form

Pada 'FormData', user mengisi data yang diminta seperti Nama, NIM, dan Tahun lahir melalui Textfield. Data disimpan dalam controller, seperti TextEditingController, yang digunakan untuk mengambil input dari user.

contoh Kodenya:
final _namaController = TextEditingController();
final _nimController = TextEditingController();
final _tahunController = TextEditingController();

2. Mengambil Data dari Controller

Saat user klik tombol simpan, data dari setiap controller ( yang telah diisi user) diambil menggunakan method .text untuk String atau method lain yang sesuai seperti int.parse() untuk tipe data numerik.

contoh Kodenya :
String nama = _namaController.text;
String nim = _niimController.text;
int tahun = int.parse(_tahunController.text);

3. Navigasi ke Halaman Baru (Tampilan Data)

Setelah data diambil dari controller, data tersebut dipassing ke halaman baru (tampilan) menggunakan Navigator dengan MaterialPageRoute. Pada proses ini, data disalurkan melalui constructor widget TampilData.

contoh Kodenya:
Navigator.of(context).push(MaterialPageRoute(
    builder: (context) =>
        TampilData(nama: nama, nim: nim, tahun: tahun)));

Kode di atas mengarahkan aplikasi ke halaman TampilData, sambil mengirimkan data nama, nim, dan tahun sebagai parameter ke constructor dari TampilData.

4. Menerima dan Menampilkan Data di Halaman Baru

Di halaman TampilData, data yang telah dipassing dari form diterima melalui constructor. Kemudian data ini digunakan untuk menampilkan informasi di halaman baru.

constructor di Halaman TampilData:
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

Di sini, nama, nim, dan tahun ditangkap sebagai parameter yang disediakan ketika halaman baru di panggil dari form.

5. Menghitung dan Menampilkan Hasil

Setelah data diterima, dalam widget ini dapat memanipulasi data, dan kemudian menampilkannya di dalam UI.

contoh Kode pada Tampilan Data:
final int umur = DateTime.now().year - tahun;

return Scaffold(
  appBar: AppBar(
    title: Text("Perkenalan"),
  ),
  body: Container(
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
        Text("Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun."),
      ],
    ),
  ),
);

<br>
<img src="https://github.com/user-attachments/assets/00dfeb68-76be-4ee4-a654-3eed9f260d5d" width="300">
<img src="https://github.com/user-attachments/assets/185fe208-33a7-4842-bfa5-53e9ece01093" width="300">



