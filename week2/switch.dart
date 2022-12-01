void main() {
  final int classDegree = 2;
  bool isSucess = false;

  switch (classDegree) {
    case 2:
      print('basarili');
      isSucess = true;
      break;
    case 1:
      print('olur');
      isSucess = true;

      break;
    case 0:
      print('yeterli');
      isSucess = true;

      break;
    default:
      print('basarsiz');
      isSucess = false;
  }
  print("coucugunuzun durumu: $isSucess");
}
