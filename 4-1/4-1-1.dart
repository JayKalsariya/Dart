import 'dart:io';

int Cube(int n) {
  return n * n * n;
}

void main() {
  stdout.write('Enter any Number : ');
  int? n = int.parse(stdin.readLineSync()!);
  int ans = Cube(n);
  print('Cube of $n is $ans');
}
