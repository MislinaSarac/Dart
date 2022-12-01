void main() {
  final String aliCompany = "Ali";
  final String veliCompany = "Veli";
  final String xyCompany = "xy";
  final String zCompany = "z";

  const companyLength = 2;
  String results = "";

  if (aliCompany.length > companyLength) {
    results = results + aliCompany;
  }
  if (veliCompany.length > companyLength) {
    results = results + veliCompany;
  }
  if (xyCompany.length > companyLength) {
    results = results + xyCompany;
  }
  if (zCompany.length > companyLength) {
    results += zCompany;
  }
  if (results.length == 0) {
    print("bulunamadi");
  } else {
    print(results);
  }
}
