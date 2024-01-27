import 'dart:io';

class Student {
  late int id;
  late String name;

  void setdata() {
    stdout.write('Enter Id   : ');
    id = int.parse(stdin.readLineSync()!);
    stdout.write('Enter Name : ');
    name = stdin.readLineSync()!;
  }
  void getdata() {
    print('Id   : $id');
    print('Name : $name');
  }
}

void main() {
  stdout.write('Enter No. of student : ');
  int? n = int.parse(stdin.readLineSync()!);
  List<Student> s = List.generate(n, (index) => Student());
  print('--------Take Data--------');
  for (var i = 0; i < n; i++) {
    print('\tStudent ${i + 1}');
    s[i].setdata();
  }
  print('--------Print Data-------');
  for (var i = 0; i < n; i++) {
    print('\tStudent ${i + 1}');
    s[i].getdata();
  }
}
