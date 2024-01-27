import 'dart:io';

class Item {
  String number;
  String name;
  int quantity;
  double tax;
  double discount;

  Item(this.number, this.name, this.quantity, this.tax, this.discount);
}

void main() {
  // (A) Verify User Id and Password
  stdout.write("Enter User ID: ");
  String userId = stdin.readLineSync()!;
  
  stdout.write("Enter Password: ");
  String password = stdin.readLineSync()!;
  
  // Simple validation for demonstration purposes
  if (userId != "admin" || password != "12345") {
    print("Invalid userId OR password ");
  }

  List<Item> items = [];

  // (B) User Input Item Number, Item Name, Quantity, Tax, Discount
  stdout.write('Enter No. Of Items : ');
  int? n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("Item ${i + 1}");
    stdout.write("Item Number: ");
    String number = stdin.readLineSync()!;
    
    stdout.write("Item Name: ");
    String? name = stdin.readLineSync()!;
    
    stdout.write("Quantity: ");
    int? quantity = int.parse(stdin.readLineSync()!);
    
    stdout.write("Tax: ");
    double? tax = double.parse(stdin.readLineSync()!);
    
    stdout.write("Discount: ");
    double? discount = double.parse(stdin.readLineSync()!);

    Item newItem = Item(number, name, quantity, tax, discount);
    items.add(newItem);
  }

  // (C) Display All Record in Ascending Order (by Item Number)
  items.sort((a, b) => a.number.compareTo(b.number));

  items.forEach((item) {
    print("Number: ${item.number}, Name: ${item.name}, Quantity: ${item.quantity}, Tax: ${item.tax}, Discount: ${item.discount}");
  });
}
