import 'dart:io';

void main() {
  stdout.write('Enter ROW size: ');
  int? r = int.parse(stdin.readLineSync()!);
  stdout.write('Enter COLUMN size: ');
  int? c = int.parse(stdin.readLineSync()!);
  List a = [[]];

  for (var i = 0; i < r; i++) {
    for (var j = 0; j < c; j++) {
      stdout.write('a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync() ?? "0");
      a.add(val);
    }
  }

  for (var i = 0; i < r; i++) {
    for (var j = 0; j < c; j++) {
      stdout.write(${a[i][j]});
    }
  }
}
