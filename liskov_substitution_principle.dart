class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
}

class Square extends Rectangle {
  Square(double length) : super(length, length);
}

void main() {
  final Rectangle error = Square(3);

  // Creating a square with various sides lengths... what??
  error.width = 4;
  error.height = 8;
}
