import 'dart:io';

void time(
    {required int min1,
    required int sec1,
    required int min2,
    required int sec2}) {
  Future.delayed(Duration(seconds: 1), () {
    print('$min1 : $sec1');
    sec1++;
    if (sec1 == 60) {
      min1++;
      sec1 = 0;
    }
    if (min1 < min2) {
      time(min1: min1, sec1: sec1, min2: min2, sec2: sec2);
    }
    else if(min1 == min2){
      if(sec1 <= sec2){
        time(min1: min1, sec1: sec1, min2: min2, sec2: sec2);
      }
    }
  });
}

void main() {
  stdout.write('Enter Min1 : ');
  int? min1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter Sec1 : ');
  int? sec1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter Min2 : ');
  int? min2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter Sec2 : ');
  int? sec2 = int.parse(stdin.readLineSync()!);
  time(min1: min1, sec1: sec1, min2: min2, sec2: sec2);
}
