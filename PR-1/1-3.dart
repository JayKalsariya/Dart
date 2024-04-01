import 'dart:io';

void main() {
  stdout.write('Enter size of array : ');
  int? n = int.parse(stdin.readLineSync()!);
  List a = [];
  int choice = 1;

  for (var i = 0; i < n; i++) {
    stdout.write('a[$i] : ');
    int val = int.parse(stdin.readLineSync() ?? "0");
    a.add(val);
  }

  print('1. Insert');
  print('2. Update');
  print('3. Delete');
  print('4. Display');
  print('0. Exit');
  do {
    stdout.write('Enter your choice : ');
    int? choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Enter index : ');
        int? ind = int.parse(stdin.readLineSync()!);
        stdout.write('Enter element : ');
        int? ele = int.parse(stdin.readLineSync()!);
        a.insert(ind, ele);
        break;
      case 2:
        stdout.write('Enter index : ');
        int? ind = int.parse(stdin.readLineSync()!);
        stdout.write('Enter element : ');
        int? ele = int.parse(stdin.readLineSync()!);

        break;
      case 3:
        stdout.write('Enter index : ');
        int? ind = int.parse(stdin.readLineSync()!);
        a.removeAt(ind);
        break;
      case 4:
        a.forEach((element) {
          print(element);
        });
        break;
    }
  } while (choice != 0);
}
