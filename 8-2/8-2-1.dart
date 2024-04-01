import 'dart:io';

void loop({required int i, required int n}) {
  Future.delayed(
    Duration(seconds: 1),
    () {
      print(i);
      i++;
      if (i <= n) {
        loop(i: i, n: n);
      }
    },
  );
}

void main() {
  stdout.write('Enter N number : ');
  int? n = int.parse(stdin.readLineSync()!);
  loop(i: 1, n: n);
}
