import 'dart:io';

void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();

  print('Enter your age:');
  String? age = stdin.readLineSync();

  fetchUserData(name: name, age: age)
      .then((user) => print('User data received: $user'), onError: (error) {
        print('Error occurred while fetching user data: $error');
      })
      .whenComplete(() => print('User data fetch operation completed'));
}

Future<String> fetchUserData({String? name, String? age}) async {
  await Future.delayed(Duration(seconds: 2));

  // Validasi agar hanya nama (huruf dan spasi) yang diterima
  if (name == null || name.isEmpty || !RegExp(r'^[a-zA-Z ]+$').hasMatch(name)) {
    throw Exception('Failed: Invalid input. Please enter a valid name (letters only).');
  }

  // Validasi agar umur hanya angka antara 1-100
  if (age == null || age.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(age)) {
    throw Exception('Failed: Invalid input. Please enter a valid age (numbers only).');
  }

  int ageValue = int.parse(age);
  if (ageValue < 1 || ageValue > 100) {
    throw Exception('Failed: Age must be between 1 and 100.');
  }

  return 'User data: Name: $name, Age: $age';
}
