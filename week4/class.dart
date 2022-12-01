import 'model/user_model.dart';
import 'model/user_model2.dart';

void main() {
  final int customerMoney = 50;
  final String customerName = "x";
  final int customerAge = 14;
  final String customerCity = "İzmir";

  //controlCustomerAge(customerMoney);

  final int customerMoney2 = 50;
  final String customerName2 = "y";
  final int customerAge2 = 14;
  final String customerCity2 = "İstanbul";

  //controlCustomerAge(customerMoney2);
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('0 dan buyuk');
      } else {
        print('0 dan kucuk');
      }
    } else {
      print('Hesap acalim');
    }
    print("*************");

    int customerMoneyX = 15;
    User user1 = User("a", 15, age: 20, city: "Ankara", id: '123');
    // User user2 = User("b", 20, null, null);
    final user3 = User("c", 50, age: 12, id: '12');
    print("user3.userCode");
    print(user1.name);

    if (user3.city == null) {
      print("musteri sehir bilgisini vermemis");
    } else {
      if (user3.city!.isEmpty) {
        print("xxxx");
      }
      print(user3.usercode);

      if (user3.city == "İstanbul") {
        print("tebrikler");
      }
    }
    if (user3.isSpecialUser("12")) {
      user3.money += 5;
      print("para eklendi");
    }

    //

    User2 newUser2 = User2("xy", 30);
    newUser2.money += 5;
    newUser2.money = 5;

    print(newUser2.toString());
  }

  void contolCustomerAge(int value) {
    if (value > 10) {
      print("Alisveris yapabilirsiniz.");
    } else {
      print("Alisveris yapamazsiniz.");
    }
    print("************");
  }
}
