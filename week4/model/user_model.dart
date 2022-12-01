class User {
  late final String name;
  late int money;
  late final int? age;
  late final String? city;
  late final String? usercode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    usercode = (city ?? 'ist') + name;
    _id = id;
  }
  bool isSpecialUser(String id) {
    return _id == id;
  }

  bool get isEmptyId => _id.isEmpty;
}
