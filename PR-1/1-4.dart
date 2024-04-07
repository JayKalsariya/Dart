import 'dart:io';

void main() {
  List<List<int>> matrix1 = [];
  List<List<int>> matrix2 = [];

  print('Enter the number of rows:');
  int rows = int.parse(stdin.readLineSync()!);
  print('Enter the number of columns:');
  int columns = int.parse(stdin.readLineSync()!);

  print('Enter the elements of the first matrix row-wise:');
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      stdin.readLineSync();
      row.add(int.parse(stdin.readLineSync()!));
    }
    matrix1.add(row);
  }

  print('Enter the elements of the second matrix row-wise:');
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      stdin.readLineSync();
      row.add(int.parse(stdin.readLineSync()!));
    }
    matrix2.add(row);
  }

  List<List<int>> result = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      row.add(matrix1[i][j] + matrix2[i][j]);
    }
    result.add(row);
  }

  print('The sum of the matrices is:');
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      stdout.write('${result[i][j]} ');
    }
    print('');
  }
}