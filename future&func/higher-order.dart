// Higher-Order Function: Menerima fungsi pemrosesan sebagai parameter
void processUsers(List<String> users, Function(String) process) {
  for (var user in users) {
    process(user); // Memanggil fungsi yang diberikan sebagai parameter
  }
}

// Contoh fungsi yang akan dipakai sebagai callback
void printUser(String user) {
  print('👤 Pengguna: $user');
}

void toUpperCaseUser(String user) {
  print('🔠 Nama Kapital: ${user.toUpperCase()}');
}

void main() {
  List<String> users = ['Alice', 'Bob', 'Charlie', 'David'];

  print('\n📢 Menampilkan daftar pengguna:');
  processUsers(users, printUser); // Memproses dengan printUser

  print('\n📢 Menampilkan pengguna dalam huruf besar:');
  processUsers(users, toUpperCaseUser); // Memproses dengan toUpperCaseUser
}
