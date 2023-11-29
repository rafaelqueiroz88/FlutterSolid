import './circle.dart';
import './rectangle.dart';
import './area_calculator.dart';

void main() {
  final circle = Circle(30.0);
  final rectangle = Rectangle(20.0, 30.5);
  final calculator = AreaCalculator();
  print(calculator.calculate(circle));
  print(calculator.calculate(rectangle));
}
