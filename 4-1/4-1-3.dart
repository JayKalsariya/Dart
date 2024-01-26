import 'dart:io';

void main() {
  late double a;
  late double b;
  print('1.For Addition       (+)');
  print('2.For Substraction   (-)');
  print('3.For Multiplication (*)');
  print('4.For Division       (/)');
  print('5.For Reminder       (%)');
  stdout.write('Enter Your Choice : ');
  int? n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        stdout.write('Enter A : ');
        double? a = double.parse(stdin.readLineSync()!);
        stdout.write('Enter B : ');
        double? b = double.parse(stdin.readLineSync()!);
        print('\tANSWER : ${a + b}');
        break;
      case 2:
        stdout.write('Enter A : ');
        double? a = double.parse(stdin.readLineSync()!);
        stdout.write('Enter B : ');
        double? b = double.parse(stdin.readLineSync()!);
        print('\tANSWER : ${a - b}');
      case 3:
        stdout.write('Enter A : ');
        double? a = double.parse(stdin.readLineSync()!);
        stdout.write('Enter B : ');
        double? b = double.parse(stdin.readLineSync()!);
        print('\tANSWER : ${a * b}');
      case 4:
        stdout.write('Enter A : ');
        double? a = double.parse(stdin.readLineSync()!);
        stdout.write('Enter B : ');
        double? b = double.parse(stdin.readLineSync()!);
        print('\tANSWER : ${a / b}');
      case 5:
        stdout.write('Enter A : ');
        double? a = double.parse(stdin.readLineSync()!);
        stdout.write('Enter B : ');
        double? b = double.parse(stdin.readLineSync()!);
        print('\tANSWER : ${a % b}');
      default:
        print('Invalid Input...');
    }
}
