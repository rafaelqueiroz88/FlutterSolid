import './shape.dart';

class Rectangle extends Shape {
  double width;
  double heigth;
  Rectangle(this.width, this.heigth);

  @override
  double area() => width * heigth;
}
