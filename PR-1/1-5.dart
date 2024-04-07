import 'dart:io';

void main() {
  List<List<int>> matrix = [];

  for (int i = 0; i < 3; i++) {
    List<int> row = [];
    for (int j = 0; j < 3; j++) {
      stdout.write("matrix[$i][$j]: ");
      row.add(int.parse(stdin.readLineSync()!));
    }
    matrix.add(row);
  }

  while (true) {
    stdout.write(
        "1. Sum of all elements\n2. Sum of specific Row\n3. Sum of specific Column\n4. Sum of diagonal elements\n5. Sum of antidiagonal elements\n0. Exit: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      break;
    }

    switch (choice) {
      case 1:
        int sum = 0;
        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            sum += matrix[i][j];
          }
        }
        print("Sum of all elements: $sum");
        break;
      case 2:
        stdout.write("Enter row number: ");
        int rowNum = int.parse(stdin.readLineSync()!);
        int rowSum = 0;
        for (int i = 0; i < 3; i++) {
          rowSum += matrix[rowNum - 1][i];
        }
        print("Sum of row $rowNum: $rowSum");
        break;
      case 3:
        stdout.write("Enter column number: ");
        int colNum = int.parse(stdin.readLineSync()!);
        int colSum = 0;
        for (int i = 0; i < 3; i++) {
          colSum += matrix[i][colNum - 1];
        }
        print("Sum of column $colNum: $colSum");
        break;
      case 4:
        int diagSum = 0;
        for (int i = 0; i < 3; i++) {
          diagSum += matrix[i][i];
        }
        print("Sum of diagonal elements: $diagSum");
        break;
      case 5:
        int antiDiagSum = 0;
        for (int i = 0; i < 3; i++) {
          antiDiagSum += matrix[i][2 - i];
        }
        print("Sum of antidiagonal elements: $antiDiagSum");
        break;
      case 0:
        break;
      default:
        print("Invalid choice.");
    }
  }
}
