import './shape.dart';

class Square implements Shape {
  double size;
  Square(this.size);

  @override
  double calculateArea() {
    return size * size;
  }
}
