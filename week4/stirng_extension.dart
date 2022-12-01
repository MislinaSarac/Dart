void main(List<String> args) {
  if ("Mislina".isAdmin()) {
    print('object');
  }
  String? name;
  name.isAdmin();
}

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
