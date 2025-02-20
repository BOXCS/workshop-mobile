class ConfigurationBad {
  String configName;  // Menggunakan String sebagai nama konfigurasi (kurang aman)
  String value;       // Menggunakan String sebagai tipe data tetap (kurang fleksibel)

  // Konstruktor
  ConfigurationBad(this.configName, this.value);

  // Method untuk menampilkan informasi konfigurasi
  void displayConfig() {
    print('Nama Konfigurasi: $configName');
    print('Nilai: $value');
  }
}

void main() {
  // Membuat beberapa konfigurasi dengan String sebagai key
  ConfigurationBad config1 = ConfigurationBad('theme', 'dark');
  ConfigurationBad config2 = ConfigurationBad('language', 'English');
  ConfigurationBad config3 = ConfigurationBad('debugMode', 'true');

  // Menyimpan konfigurasi dalam Map dengan String sebagai key
  var settings = {
    config1.configName: config1.value,
    config2.configName: config2.value,
    config3.configName: config3.value,
  };

  // Menampilkan semua konfigurasi
  print("\n=== Daftar Konfigurasi (Versi Buruk) ===");
  settings.forEach((key, value) {
    print('$key → $value');
  });

  // Mengakses konfigurasi tertentu dengan String (kurang aman)
  print("\n=== Mengakses Konfigurasi Tertentu ===");
  print('Tema saat ini: ${settings['theme']}');
  print('Bahasa saat ini: ${settings['language']}');
  print('Mode Debug Aktif? ${settings['debugMode']}'); // Nilai Boolean tersimpan sebagai String
}
