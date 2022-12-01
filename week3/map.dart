void main() {
  Map<String, int> users = {'x': 20, 'y': 30};
  print("x in parasi ${users['x']}");
  for (var item in users.keys) {
    print('${item}. ${users[item]}');
  }
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} +${users.values..elementAt(i)}');
  }

  print("-------------");

  final Map<String, List<int>> aBank = {
    'x': [100, 200, 300]
  };
  aBank['y'] = [40, 50];
  aBank['z'] = [80];

  for (var item in aBank.keys) {
    //bankanın tüm elemanları

    for (var money in aBank[item]!) {
      //userin hesapları
      if (money > 120) {
        print("krediniz hazir");
        break;
      }
    }
  }
  for (var name in aBank.keys) {
    int result = 0;
    for (var money in aBank[name]!) {
      result = result + money;
    }
    print('${name} sizin toplam paraniz = $result');
  }
}
