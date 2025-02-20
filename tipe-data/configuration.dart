class Configuration {
  Symbol configName; // Menggunakan Symbol sebagai nama konfigurasi
  dynamic value;     // Tipe dynamic agar bisa menyimpan berbagai jenis nilai

  // Konstruktor
  Configuration(this.configName, this.value);

  // menampilkan informasi konfigurasi
  void displayConfig() {
    print('Nama Konfigurasi: ${configName.toString()}');
    print('Nilai: $value');
  }
}

void main() {
  // Membuat beberapa konfigurasi dengan Symbol
  Configuration config1 = Configuration(#theme, 'dark');
  Configuration config2 = Configuration(#language, 'English');
  Configuration config3 = Configuration(#debugMode, true);

  // Menyimpan konfigurasi dalam Map dengan Symbol sebagai key
  var settings = {
    config1.configName: config1.value,
    config2.configName: config2.value,
    config3.configName: config3.value,
  };

  // Menampilkan semua konfigurasi
  print("\n=== Daftar Konfigurasi ===");
  settings.forEach((key, value) {
    print('${key.toString()} → $value');
  });

  // Mengakses konfigurasi tertentu dengan Symbol
  print("\n=== Mengakses Konfigurasi Tertentu ===");
  print('Tema saat ini: ${settings[#theme]}');
  print('Bahasa saat ini: ${settings[#language]}');
  print('Mode Debug Aktif? ${settings[#debugMode]}');
}

/*
Symbol mencegah bentrok dengan key lain
Symbol tidak bisa diubah jadi lebih aman buat pengolahan data

*/
