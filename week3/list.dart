void main() {
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);
  print("*******************");
  List<int> moneyCustomerNews = [100, 30, 40, 60];
  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print("musteri parası : ${moneyCustomerNews[i]}");

    if (moneyCustomerNews[i] > 35) {
      print("kredi hazir");
    } else if (moneyCustomerNews[i] > 0) {
      print("kredi veremeyiz ama 1 dakika");
    } else {
      print("bye");
    }
  }
}
