import './area.dart';

class Circle extends Area {
  final double radius;
  const Circle(this.radius);

  @override
  double computeArea() => radius * radius * 3.1415;
}
