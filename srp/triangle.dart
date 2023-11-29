import './shape.dart';

class Triangle extends Shape {
  double base;
  double height;
  Triangle(this.base, this.height);

  @override
  double area() => (base * height) / 2;
}
