import 'dart:io';

double Success({int o1 = 0, int o2 = 0, int o3 = 0, int o4 = 0, int o5 = 0}) {
  int total = o1 + o2 + o3;

  // Calculate the percentage
  double ans = (total / 300) * 100;
  return ans;
}

void main() {
  stdout.write('Enter occuption 1 marks : ');
  int? o1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter occuption 1 marks : ');
  int? o2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter occuption 1 marks : ');
  int? o3 = int.parse(stdin.readLineSync()!);
  double ans2 = Success(o1: o1, o2: o2, o3: o3);
  print("Success Percentage: $ans2%");
}
