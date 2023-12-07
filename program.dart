class Car {
  final String? name;
  final String? model;
  final int? prize;

  // Constant Constructor
  const Car({this.name, this.model, this.prize});
}

void main() {
  // Here car is object of class Car.
  const Car car = const Car(name: "BMW", model: "X5", prize: 50000);
  print("Name: ${car.name}");
  print("Model: ${car.model}");
  print("Prize: ${car.prize}");
}