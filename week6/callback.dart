void main(List<String> args) {
  final user = User(money: 5);
  user.calculateMoney((int result) {
    print(user.money);
  });
  print(user.money);
}

typedef CalculateCallBack = int Function(int data);

class User {
  @deprecated
  int money;
  User({
    required this.money,
  });
  void calculateMoney(void Function(int data) onComplete) {
    money += 5;
    final passData = onComplete(money);
  }
}
