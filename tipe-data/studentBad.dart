class StudentBad {
  String name;         // Nama siswa sebagai String
  String subjects;     // Mata pelajaran disimpan sebagai String (tidak fleksibel)
  double grades;       // Nilai tunggal sebagai double (tidak bisa menyimpan banyak mata pelajaran)

  // Konstruktor
  StudentBad(this.name, this.subjects, this.grades);

  // Method untuk menampilkan informasi siswa
  void displayStudent() {
    print('\n=== Informasi Siswa (Versi Buruk) ===');
    print('Nama: $name');
    print('Mata Pelajaran: $subjects');
    print('Nilai: $grades');
  }

  // Method untuk mengganti mata pelajaran dan nilainya
  void updateSubjectAndGrade(String newSubject, double newGrade) {
    subjects = newSubject;
    grades = newGrade;
    print('Mata pelajaran diperbarui menjadi: $subjects dengan nilai: $grades');
  }
}

void main() {
  // Membuat objek StudentBad hanya dengan satu mata pelajaran dan satu nilai
  StudentBad student = StudentBad('Bob', 'Matematika', 90.5);

  student.displayStudent(); // Menampilkan informasi awal

  // Mengganti mata pelajaran dan nilai
  student.updateSubjectAndGrade('Fisika', 85.0);
  student.displayStudent(); // Menampilkan data terbaru

  // Menambahkan mata pelajaran baru (tidak bisa, hanya bisa mengganti yang lama)
  student.updateSubjectAndGrade('Kimia', 88.5);
  student.displayStudent();
}
