import 'dart:io';

import 'package:exam_dart/model/Persion.dart';

class Teacher extends Persion {
  int? teacherId;
  String? teacherName;
  String? numberPhone;
  String? address;
  double? salary;
  int? numberWorkDay;

  Teacher();

  Teacher.constructor(this.teacherId, this.teacherName, this.numberPhone,
      this.address, this.salary, this.numberWorkDay);

  @override
  String toString() {
    return 'Teacher{teacherId: $teacherId, teacherName: $teacherName, numberPhone: $numberPhone, address: $address, salary: $salary, numberWorkDay: $numberWorkDay}';
  }

  List<Teacher> listTeacher = [];

  void input() {
    final NUMERIC = RegExp(r'^-?[0-9]+$');
    final DOUBLENUMBER = RegExp(r'^-?\d*(\.\d+)?$');
    print('nhập ID giáo viên');
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
    print('nhập tên giáo viên');
    String name = stdin.readLineSync() ?? "";
    print('nhập sdt giáo viên');
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
    print('nhập địa chỉ giáo viên');
    String address = stdin.readLineSync() ?? "";
    print('nhập lương giáo viên');
    String string1 = stdin.readLineSync() ?? "";
    double salary;
    if (string1.isEmpty || !DOUBLENUMBER.hasMatch(string1)) {
      while (true) {
        print('bạn đã nhập sai, mời nhập lại');
        string1 = stdin.readLineSync() ?? "";
        if (DOUBLENUMBER.hasMatch(string1)) {
          salary = double.parse(string1);
          break;
        }
      }
    }
    salary = double.parse(string1);
    print('nhập số ngày làm việc của giáo viên');
    String string2 = stdin.readLineSync() ?? "";
    int numberWorkDay;
    if (string2.isEmpty || !NUMERIC.hasMatch(string2)) {
      while (true) {
        print('bạn cần nhập số, mời nhập lại');
        string2 = stdin.readLineSync() ?? "";
        if (NUMERIC.hasMatch(string2)) {
          numberWorkDay = int.parse(string2);
          break;
        }
      }
    }
    numberWorkDay = int.parse(string);
    var teacher =
        Teacher.constructor(id, name, phone, address, salary, numberWorkDay);
    listTeacher.add(teacher);
  }

  List<Teacher> output() {
    // List<Teacher> listTeacher1 = [];
    // for (int i = 0; i < listTeacher.length; i++) {
    //   listTeacher1[i] = listTeacher[i];
    // }
    return listTeacher;
  }

  void getSalary() {
    for (int i = 0; i < listTeacher.length; i++) {
      print(listTeacher[i].numberWorkDay! * 800000);
    }
  }

  List<Teacher> search() {
    List<Teacher> listTeacher1 = [];
    print('nhập tên học sinh muốn tìm');
    String name = stdin.readLineSync() ?? "";
    for (int i = 0; i < listTeacher.length; i++) {
      if (listTeacher[i].teacherName!.contains(name)) {
        listTeacher1.add(listTeacher[i]);
      }
    }
    return listTeacher1;
  }

  List<Teacher> sortByName() {
    listTeacher.sort((a, b) {
      return a.teacherName!.compareTo(b.teacherName!);
    });
    return listTeacher;
  }
}
