import 'dart:io';

class Train {
  int number;
  String name;
  String source;
  String destination;
  String time;

  Train(this.number, this.name, this.source, this.destination, this.time);
}

void main() {
  List<Train> trainRecords = [];

  stdout.write('Enter No. Of Train : ');
  int? n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("\tTrain ${i + 1}");
    stdout.write("Train Number: ");
    int number = int.parse(stdin.readLineSync()!);

    stdout.write("Train Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Source: ");
    String source = stdin.readLineSync()!;

    stdout.write("Destination: ");
    String destination = stdin.readLineSync()!;

    stdout.write("Train Time: ");
    String time = stdin.readLineSync()!;

    Train newTrain = Train(number, name, source, destination, time);
    trainRecords.add(newTrain);
  }

  // (B) Display Record By Search Train Number.
  stdout.write("Enter Train Number for searching : ");
  int Search = int.parse(stdin.readLineSync()!);

  Train? searchedTrain = trainRecords.firstWhere((train) => train.number == Search);

  if (trainRecords.number == Search){
    print("Number     : ${searchedTrain.number}");
    print("Name       : ${searchedTrain.name}");
    print("Source     : ${searchedTrain.source}");
    print("Destination: ${searchedTrain.destination}");
    print("Time       : ${searchedTrain.time}");
  } else {
    print("Train not found with the specified number");
  }
}
