import 'dart:io';

void main() {
  stdout.write('Enter size of array : ');
  int? n = int.parse(stdin.readLineSync()!);
  List a = [];

  for (var i = 0; i < n; i++) {
    stdout.write('a[$i] : ');
    int val = int.parse(stdin.readLineSync() ?? "0");

    a.add(val);
  }
  int max = a[0];

  print('\n-----Maximum Number-----');
  a.forEach((element) {
    if (element > max) {
      max = element;
    }
  });
  print(max);
}
