import 'dart:io';

int Sum(int a, int b) {
  return a + b;
}

void main() {
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int ans = Sum(num1, num2);

  print('$num1 + $num2 = $ans');
}
