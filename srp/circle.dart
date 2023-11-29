import './shape.dart';

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double area() => 3.1415 * (radius * radius);
}
