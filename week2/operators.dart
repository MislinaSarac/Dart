void main() {
  int money = 5;
  money += 1;
  money--;

  print(money);

  String name = "Mislina";
  String sarac = "Sarac";

  print(name + sarac);

  if (name == 'Mislina') {}
  if (name != 'Mislina') {}
  if (name.length < 'Mislina'.length) {}
  if (name.length > 'Mislina'.length) {}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);

  print(myMoney % 2 == 0);
}
