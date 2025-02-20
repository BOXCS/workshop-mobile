import 'dart:io';

Future<String> pesanKamar(String namaPemesan, int jumlah) {
  return Future.delayed(Duration(seconds: 2), () {
    int stok = 10; // Simulasi stok kamar kost
    if (jumlah > stok) {
      throw Exception("Stok tidak cukup! Kamar tersedia: $stok");
    }
    return "Pemesanan $jumlah kamar atas nama $namaPemesan berhasil diproses!";
  });
}

void main() {
  print("Masukkan nama pemesan:");
  String? namaPemesan = stdin.readLineSync(); // Input nama pemesan dari terminal

  print("Masukkan jumlah kamar yang ingin dipesan:");
  String? inputJumlah = stdin.readLineSync();
  int jumlah = int.tryParse(inputJumlah ?? "0") ?? 0; // Konversi ke integer

  print("Memproses pemesanan kamar...");

  pesanKamar(namaPemesan ?? "Tamu", jumlah)
      .then((result) => print(result)) // Jika sukses
      .catchError((error) => print("⚠ Terjadi kesalahan: ${error.toString()}")); // Jika gagal

  print("Silakan tunggu...");
}
