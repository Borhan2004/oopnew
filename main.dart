void main() {
  Student student1 = Student();
  Student student2 = Student();

  student1.age = 20;
  student1.grade = 'A';
  student1.name = 'John';
  student1.studentId = 3652;

  student2.age = 20;
  student2.grade = 'b';
  student2.name = 'Imran';
  student2.studentId = 3652;

  student1.displayInfo();
  student1.updateGrade('A+');
  student2.displayInfo();
  student2.updateStudentId('B+');
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentId;

  void displayInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade : $grade');
    print('Student Id: $studentId');
    print('------------------');
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print('Grade updated to $newGrade for $name');
  }

  void updateStudentId(String newStudentId) {
    studentId = int.tryParse(newStudentId);
    print('ID updated to $newStudentId for $name ');
  }
}
