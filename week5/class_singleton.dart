import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney(Product.money ?? 0);

  final user1 = User("x", "aa");
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  productNameChange();

  ProductConfig.instance.apiKey;
}

void calculateMoney(int money) {
  if (money > 5) {
    print("5 TL eklendi");
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;
  Product(this.name);
  Product.ayse([this.name = 'ayse']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "MS Bank";

  static void incerementMoney(int money) {
    if (money != null) {
      //  money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
