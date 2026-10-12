
class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> totals = {};

  for (Product product in products) {
    totals[product.category] =
        (totals[product.category] ?? 0) + product.price;
  }

  return totals;
}

void main() {
  List<Product> products = [
    Product('Apple', 'Food', 2.5),
    Product('Bread', 'Food', 1.5),
    Product('Phone', 'Electronics', 500),
  ];

  print(totalByCategory(products));
}
