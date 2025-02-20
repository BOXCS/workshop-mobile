// Fungsi generator untuk mengirim data pengguna satu per satu
Stream<String> sendData(List<String> users) async* {
  for (var user in users) {
    await Future.delayed(Duration(seconds: 1)); // Simulasi delay
    yield 'Data pengguna $user berhasil dikirim!';
  }
}

void main() async {
  List<String> users = ['Alice', 'Bob', 'Charlie', 'David'];

  print('📢 Mulai mengirim data...\n');

  await for (var message in sendData(users)) {
    print(message); // Menerima data satu per satu
  }

  print('\n✅ Semua data berhasil dikirim!');
}
