void main(List<String> args) async {
  print("a");

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankmoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });

  await Future.forEach([12345], (element) async {
    await Future.delayed(Duration(seconds: 2));
    print("islem bitti $element");
  });
  await Future.delayed(Duration(seconds: 2));
  print("ab");

  print("hello");
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print("hello2");
  });
  print("hello3");
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("hello4");
  });
}

Stream<int> dataAddBankmoney(int retryCount, int money) async* {
  int _localRetry = 0;

  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 8;
  }
}
