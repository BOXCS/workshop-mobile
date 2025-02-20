class Student {
  String name;                // nama siswa
  List<String> subjects;      // daftar mata pelajaran
  Map<String, double> grades; // (mata pelajaran -> nilai)

  // Constructor
  Student(this.name, this.subjects, this.grades);

  // informasi siswa dengan format
  void displayStudent() {
    print('\n=== Informasi Siswa ===');
    print('Nama: $name');
    print('Mata Pelajaran: ${subjects.join(', ')}');

    print('\nNilai Per Mata Pelajaran:');
    grades.forEach((subject, grade) {
      print('- $subject: $grade');
    });

    print('\nRata-rata Nilai: ${calculateAverageGrade().toStringAsFixed(2)}');
  }

  // Method untuk menambahkan mata pelajaran baru
  void addSubject(String subject) {
    if (!subjects.contains(subject)) {
      subjects.add(subject);
      grades[subject] = 0.0; // Default nilai awal
      print('Mata pelajaran $subject ditambahkan dengan nilai default 0.0');
    } else {
      print('Mata pelajaran $subject sudah ada.');
    }
  }

  // Method untuk memperbarui nilai mata pelajaran tertentu
  void updateGrade(String subject, double grade) {
    if (grades.containsKey(subject)) {
      grades[subject] = grade;
      print('Nilai untuk mata pelajaran $subject diperbarui menjadi $grade.');
    } else {
      print('Mata pelajaran $subject tidak ditemukan.');
    }
  }

  // Method untuk menghitung rata-rata nilai
  double calculateAverageGrade() {
    if (grades.isEmpty) return 0.0;
    double total = grades.values.reduce((a, b) => a + b);
    return total / grades.length;
  }
}

void main() {
  // Membuat objek Student dengan mata pelajaran dan nilai awal
  Student student = Student(
    'Bob',
    ['Matematika', 'Fisika', 'Kimia'],
    {'Matematika': 90.5, 'Fisika': 85.0, 'Kimia': 88.5},
  );

  student.displayStudent(); // Menampilkan informasi awal

  // Menambahkan mata pelajaran baru
  student.addSubject('Biologi');
  student.updateGrade('Biologi', 92.0); // Mengupdate nilai Biologi
  student.updateGrade('Fisika', 89.0);  // Memperbarui nilai Fisika

  // Menampilkan data terbaru
  student.displayStudent();
}
