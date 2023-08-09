import 'dart:io';

import 'package:exam_dart/model/Persion.dart';

class Student extends Persion {
  int? studentID;
  String? studentName;
  String? numberPhone;
  String? address;
  String? Batch;
  double? Mark1;
  double? Mark2;

  Student();

  Student.constructor(this.studentID, this.studentName, this.numberPhone,
      this.address, this.Batch, this.Mark1, this.Mark2);

  @override
  String toString() {
    return 'Student{studentID: $studentID, studentName: $studentName, numberPhone: $numberPhone, address: $address, Batch: $Batch, Mark1: $Mark1, Mark2: $Mark2}';
  }

  List<Student> listStudent = [];

  void input() {
    final NUMERIC = RegExp(r'^-?[0-9]+$');
    final DOUBLENUMBER = RegExp(r'^-?\d*(\.\d+)?$');
    print('nhập ID học sinh');
    String string = stdin.readLineSync() ?? "";
    int id;
    if (string.isEmpty || !NUMERIC.hasMatch(string)) {
      while (true) {
        print('bạn cần nhập số, mời nhập lại');
        string = stdin.readLineSync() ?? "";
        if (NUMERIC.hasMatch(string)) {
          id = int.parse(string);
          break;
        }
      }
    }
    id = int.parse(string);
    print('nhập tên học sinh');
    String name = stdin.readLineSync() ?? "";
    print('nhập sdt học sinh');
    String phone = stdin.readLineSync() ?? "";
    if (phone.isEmpty || !NUMERIC.hasMatch(phone)) {
      while (true) {
        print('bạn cần nhập số, mời nhập lại');
        phone = stdin.readLineSync() ?? "";
        if (NUMERIC.hasMatch(phone)) {
          break;
        }
      }
    }
    print('nhập địa chỉ học sinh');
    String address = stdin.readLineSync() ?? "";
    print('nhập batch của học sinh');
    String batch = stdin.readLineSync() ?? "";
    print('nhập điểm toán 1');
    String string1 = stdin.readLineSync() ?? "";
    double mark1;
    if (string1.isEmpty || !DOUBLENUMBER.hasMatch(string1)) {
      while (true) {
        print('bạn đã nhập sai, mời nhập lại');
        string1 = stdin.readLineSync() ?? "";
        if (DOUBLENUMBER.hasMatch(string1)) {
          mark1 = double.parse(string1);
          break;
        }
      }
    }
    mark1 = double.parse(string1);
    print('nhập điểm toán 2');
    String string2 = stdin.readLineSync() ?? "";
    double mark2;
    if (string2.isEmpty || !DOUBLENUMBER.hasMatch(string2)) {
      while (true) {
        print('bạn đã nhập sai, mời nhập lại');
        string2 = stdin.readLineSync() ?? "";
        if (DOUBLENUMBER.hasMatch(string2)) {
          mark2 = double.parse(string2);
          break;
        }
      }
    }
    mark2 = double.parse(string2);
    var student =
        Student.constructor(id, name, phone, address, batch, mark1, mark2);
    listStudent.add(student);
  }

  List<Student> output() {
    // List<Student> listStudent1 = [];
    // for (int i = 0; i < listStudent.length; i++) {
    //   listStudent1[i] = listStudent[i];
    // }
    return listStudent;
  }

  void avgMark() {
    for (int i = 0; i < listStudent.length; i++) {
      print((listStudent[i].Mark1! + listStudent[i].Mark2!) / 2);
    }
  }

  List<Student> search() {
    List<Student> listStuden1 = [];
    print('nhập tên học sinh muốn tìm');
    String name = stdin.readLineSync() ?? "";
    for (int i = 0; i < listStudent.length; i++) {
      if (listStudent[i].studentName!.contains(name)) {
        listStuden1.add(listStudent[i]);
      }
    }
    return listStuden1;
  }
  List<Student> sortByName() {
    listStudent.sort((a, b) {
      return a.studentName!.compareTo(b.studentName!);
    });
    return listStudent;
  }
}
