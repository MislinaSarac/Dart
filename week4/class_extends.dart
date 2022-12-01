void main() {
  final userNormal = User("x", 120);
  final userBank = bankUser("y", 150, 123);
  final userSpecial = specialUser("z", 160, 1234, 30);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('A- $money paraniz vardir');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class bankUser extends IUser {
  final int bankingCode;

  bankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class specialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  specialUser(this.name, this.money, this.bankingCode, int disccount)
      : super(name, money) {
    _disccount = disccount;
  }
  int get calculateMoney => money - (money ~/ _disccount);
}
