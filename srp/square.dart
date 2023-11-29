import './shape.dart';

class Square extends Shape {
  final double size;
  Square(this.size);

  @override
  double area() => size * size;
}
