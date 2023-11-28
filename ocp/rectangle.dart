import './area.dart';

class Rectangle extends Area {
  final double width;
  final double height;
  const Rectangle(this.width, this.height);

  @override
  double computeArea() => width * height;
}
