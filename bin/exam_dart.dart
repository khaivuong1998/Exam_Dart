import 'dart:io';

import 'package:exam_dart/exam_dart.dart' as exam_dart;
import 'package:exam_dart/model/Persion.dart';
import 'package:exam_dart/model/Student.dart';
import 'package:exam_dart/model/Teacher.dart';

void main(List<String> arguments) {
  print('Hello world: ${exam_dart.calculate()}!');
  // Persion persion = Persion();
  Student student = Student();
  Teacher teacher = Teacher();
  final NUMERIC = RegExp(r'^-?[0-9]+$');
  do {
    print("---------Menu---------:" +
        " 1.List Student" +
        " 2.List Teacher" +
        " 3.Add Student" +
        " 4.Add teacher" +
        " 5.Salary of each teacher" +
        " 6.Average score of each student" +
        " 7.Sort Students By Name" +
        " 8.Sort Teachers By Name" +
        " 9.Exit");
    print('nhập mục muốn lựa chọn');
    String string = stdin.readLineSync() ?? "";
    int number;
    if (string.isEmpty || !NUMERIC.hasMatch(string)) {
      while (true) {
        print('bạn cần nhập số, mời nhập lại');
        string = stdin.readLineSync() ?? "";
        if (NUMERIC.hasMatch(string)) {
          number = int.parse(string);
          break;
        }
      }
    }
    number = int.parse(string);
    switch (number) {
      case 1:
        print(student.output());
        break;
      case 2:
        print(teacher.output());
        break;
      case 3:
        student.input();
        break;
      case 4:
        teacher.input();
        break;
      case 5:
        teacher.getSalary();
        break;
      case 6:
        student.avgMark();
        break;
      case 7:
        print(student.sortByName());
        break;
      case 8:
        print(teacher.sortByName());
        break;
    }
  } while (true);
}
