import "dart:io";
void main() {

  var item1 = InventoryItem("Laptop", 10, 999.99);
  var item2 = InventoryItem("Mouse", 50, 29.99);

  item1.displayInfo();
  item2.displayInfo();

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

  void displayInfo() {
    print("Item: $name, Quantity: $quantity, Price: \$${price?.toStringAsFixed(2)}");
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