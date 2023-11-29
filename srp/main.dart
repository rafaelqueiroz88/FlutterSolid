import './circle.dart';
import './square.dart';
import './rectangle.dart';
import './triangle.dart';

void main() {
  final Circle circle = Circle(25);
  final Triangle triangle = Triangle(300, 200);
  final Rectangle rectangle = Rectangle(250, 180);
  final Square square = Square(60);

  print(circle.area());
  print(triangle.area());
  print(rectangle.area());
  print(square.area());
}
