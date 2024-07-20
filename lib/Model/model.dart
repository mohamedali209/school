class School {
  final String name;
  final String address;
  final String students;
  final String teachers;

  School({required this.name, required this.address, required this.students, required this.teachers});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['School Name'],
      address: json['School Address'],
      students: json['Number of Students'],
      teachers: json['Number of Teachers'],
    );
  }
}
