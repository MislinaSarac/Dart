void main(List<String> args) {
  IUser user = Turk();
  user.sayName();

  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;
  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => "ayse";
  @override
  void sayName() {
    print("merhaba $name");
  }
}

class English implements IUser {
  @override
  String get name => "jack";
  @override
  void sayName() {
    print("hello $name");
  }
}
