import "dart:io";
void main() {
  List<InventoryItem> inventory = [];

  print("Welcome to the Inventory Management System!");

  // Enter the first item
  print("\nEnter details for the first item:");
  var firstItem = InventoryItem("", 0, 0.0);
  firstItem.enterDetails();
  inventory.add(firstItem);

  // Ask if more items should be added
  print("\nWould you like to add more items? (yes/no)");
  var response = stdin.readLineSync();

  if (response?.toLowerCase() == "yes") {
    print("How many more items would you like to add?");
    int numberOfItems =
        int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    for (int i = 0; i < numberOfItems; i++) {
      print("\nEntering details for item ${inventory.length + 1}:");

      var item = InventoryItem("", 0, 0.0);
      item.enterDetails();
      inventory.add(item);
    }
  }

  // Display all items
  print("\nInventory Items:");

  for (int i = 0; i < inventory.length; i++) {
    print("${i + 1}.");
    inventory[i].displayInfo();
  }

  // Update
  print("\nWould you like to update any item? (yes/no)");
  var updateResponse = stdin.readLineSync();

  if (updateResponse?.toLowerCase() == "yes") {
    print("\nEnter the item number (1-${inventory.length}):");

    int itemNumber =
        int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

    if (itemNumber > 0 && itemNumber <= inventory.length) {
      InventoryItem itemToUpdate = inventory[itemNumber - 1];

      print("\nCurrent details:");
      itemToUpdate.displayInfo();

      print("\nEnter the new details:");
      itemToUpdate.enterDetails();

      print("\nUpdated item:");
      itemToUpdate.displayInfo();
      itemToUpdate.calculateTotalValue();
    } else {
      print("Invalid item number.");
    }
  }

  // Final inventory
  print("\nFinal Inventory:");

  for (int i = 0; i < inventory.length; i++) {
    print("${i + 1}.");
    inventory[i].displayInfo();
  }
}


class InventoryItem {
  String? name;
  int? quantity;
  double? price;

  InventoryItem(String name, int quantity, double price) {
    this.name = name;
    this.quantity = quantity;
    this.price = price;
  }

  //enter the item details
  void enterDetails() {
    stdout.write("Enter item name: ");
    name = stdin.readLineSync();
    stdout.write("Enter quantity: ");
    quantity = int.tryParse(stdin.readLineSync() ?? '0');
    stdout.write("Enter price: ");
    price = double.tryParse(stdin.readLineSync() ?? '0.0');
  }

    void displayInfo() {
      print(
          "Item: $name, Quantity: $quantity, Price: \$${price?.toStringAsFixed(2)}");
    }

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  void updatePrice(double newPrice) {
    price = newPrice;
  }
  
  void calculateTotalValue() {
    double totalValue = (quantity ?? 0) * (price ?? 0.0);
    print("Total value of $name: \$${totalValue.toStringAsFixed(2)}");
  }
}