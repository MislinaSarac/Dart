void main() {
  const String bankNameSpecial = "ms Bank";
  const String user1 = "musteri 1";
  const double user1Money = 100.00;

  const String user2 = "musteri 2 ";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money:  $user2Money");

  print("*********************");

  final int sahaKapasite = 100;

  const int user1kapasite = 20;
  const int user2kapasite = 50;

  int sum = user1kapasite + user2kapasite;
  int total = sahaKapasite - sum;

  print("Saha icin kalan kapasite: $total");
}
