import 'dart:io';

class Student {
  String fullName;
  int idNumber;
  List<double> grades;

  Student(this.fullName, this.idNumber, this.grades);

  void displayGradesList() {
    print("\n--- Grade Breakdown ---");
    for (int i = 0; i < grades.length; i++) {
      print("Subject ${i + 1}: ${grades[i]}");
    }
  }
}

double computeGrade(double g1, double g2, double g3) {
  return (g1 + g2 + g3) / 3;
}

void main() {
  print("Enter student's full name:");
  String name = stdin.readLineSync()!;

  print("Enter student's ID number:");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter Grade for Subject 1:");
  double grade1 = double.parse(stdin.readLineSync()!);

  print("Enter Grade for Subject 2:");
  double grade2 = double.parse(stdin.readLineSync()!);

  print("Enter Grade for Subject 3:");
  double grade3 = double.parse(stdin.readLineSync()!);

  Student currentStudent = Student(name, id, [grade1, grade2, grade3]);

  double average = computeGrade(grade1, grade2, grade3);

  String status = "";
  if (average >= 75) {
    status = "Passed";
  } else if (average >= 70) {
    status = "Conditional";
  } else {
    status = "Failed";
  }

  print("\n=========================");
  print("STUDENT RECORD");
  print("=========================");
  print("Name: ${currentStudent.fullName}");
  print("ID Number: ${currentStudent.idNumber}");
  print("Average Grade: ${average.toStringAsFixed(2)}");
  print("Status: $status");

  currentStudent.displayGradesList();
}
