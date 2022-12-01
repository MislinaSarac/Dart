void main() {
  final int userMoney = 0;
  controlUserMoney(userMoney, 0);

  final int user2Money = 5;
  controlUserMoney(user2Money, 0);

  final newUserMoney = 50;
  print(newUserMoney / 13);

  int result = converToDolor(newUserMoney);
  print(result);
  if (result > 0) {}

  final newResult = converToStandartDolor(100, dolorIndex: 15);
  final newResult2 = converToStandartDolor(100);
}

void controlUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}

int converToDolor(int userMoney) {
  return userMoney ~/ 13;
}

int converToStandartDolor(int userMoney, {int dolorIndex = 13}) {
  return userMoney ~/ dolorIndex;
}
