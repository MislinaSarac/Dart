void main(List<String> args) {
  final customerMouse = Mouses.magic;
  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse == Mouses.magic) {}

  if (customerMouse.name == 'magic') {}

  if (customerMouse.isCheckName('magic')) {
    print('yy');
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
