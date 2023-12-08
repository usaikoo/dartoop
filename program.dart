class Circle {
  static double calculateArea(double pi, double radius ) {
    return (pi * radius * radius);
  }
}

void main() {
  print(
      "The circle area is ${Circle.calculateArea(3.14159, 2)}");
}