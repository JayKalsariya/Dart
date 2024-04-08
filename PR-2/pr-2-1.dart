import 'dart:io';

class sumOflist {
  sumOflist() {
    stdout.write('Enter size of LIST : ');
    int? n = int.parse(stdin.readLineSync()!);

    List<int> list = [];
    for (int i = 0; i < n; i++) {
      stdout.write('Enter ${i + 1} element : ');
      list.insert(i, int.parse(stdin.readLineSync()!));
    }
    print("List : $list");
    int Sum = list.fold(0, (previousValue, element) => previousValue + element);
    print('SUM : $Sum');
  }
}

void main() {
  sumOflist sum = sumOflist();
}
