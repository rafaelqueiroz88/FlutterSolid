import './shape.dart';

/**
 * Use “extends” when you want to create a new class that inherits properties
 * and methods from an existing class and can add new properties and methods
 * or override existing ones.
 * Use “implements” when you want to define a contract that a class must follow,
 * such as implementing a set of method signatures.
 */

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}
