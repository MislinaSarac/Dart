void main(List<String> args) {
  final user = _User('ayse', age: 20);

  if (user.age is! int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "X");

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print('esit');
  }
  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(30, '12');

  print(moneyBank1 == moneyBank2);
  print(moneyBank1 + moneyBank2);
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('ayse');

  print(moneyBank1);
}

class _User {
  final String name;

  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'ayse';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}
