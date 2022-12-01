void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw,
      name: 'bmw x5',
      money: 1412,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 25,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 51),
    CarModel(
        category: CarModels.mercedes,
        name: 'mercedes t533',
        money: 78,
        isSecondHand: false),
    CarModel(category: CarModels.mercedes, name: 'mercedes fd356', money: 17),
    CarModel(
        category: CarModels.toyota,
        name: 'toyota 0ye',
        money: 34,
        isSecondHand: false),
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(
      category: CarModels.toyota,
      name: 'toyota 0ye',
      money: 2574,
      isSecondHand: false);
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("Araba var");
  } else {
    print("Araba yok");
  }

  final resultMercedesMore20 = carItems.where((element) {
    return element.category == CarModels.mercedes && element.money > 20;
  }).join();
  print(resultMercedesMore20);

  final carName = carItems.map((e) => e.name).join(',');
  print(carName);

  bool isHaveCaryamaha = false;
  try {
    final yamahaCar =
        carItems.singleWhere((element) => element.category == CarModels.yamaha);
    print(yamahaCar.name);
    isHaveCaryamaha = true;
  } catch (e) {
    print("araba yok");
    isHaveCaryamaha = false;
  } finally {
    print("islem bitti $isHaveCaryamaha");
  }
  final index = carItems.indexOf(newCar);
  print(index);
  final _mercedes =CarModel(category: CarModels.mercedes, name: 'asf543', money: 12312);
  carItems.add(_mercedes);
  carItems.sort((first, second) => second.money.compareTo(first.money));
  print(carItems);

  final users=carItems.expand((element) => element.users).toList();
 calculateToUser(List.of(carItems));
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category==CarModel.bmw || element.money<30);
  print(carItems);
}
void calculateToUser(List<CarModel> items){
  
  final _items=[...items.toList()];
  final newItems=_items.map((CarModel e) {
    if(e.category == CarModels.bmw){
      e.category = CarModels.yamaha;
    }
    if(e.isSecondHand){
      e.isSecondHand=false;
    }
    return e;
  });


  print(newItems);
}

class CarModel {
 CarModels category;
  final String name;
  final double money;

List<User>?users;
String? city;
bool isSecondHand;
CarModel({
  this.city,
  this.isSecondHand=true,
  this.users=const []
})

  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });




  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, mercedes, toyota, yamaha }
