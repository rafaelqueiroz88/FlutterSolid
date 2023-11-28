import './shape.dart';
import './rectangle.dart';
import './square.dart';

void main() {
  final Shape square = Square(3);
  print(square.calculateArea());

  final Shape rectangle = Rectangle(3, 8);
  print(rectangle.calculateArea());
}
