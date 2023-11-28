import 'dart:web_gl';

/**
 * Single Responsibility Principle (SRP)
 */
class Shapes {
  List<String> cache = [];

  // Calculations
  double squareArea(double l) {
    return l * l;
  }

  double circleArea(double r) {
    return r * 3.1415;
  }

  double triangleArea(double b, double h) {
    return b * h;
  }

  // Paint to the screen
  void paintSquare(Canvas c) {
    // paint something into screen
  }

  void paintCircle(Canvas c) {
    // paint something into screen
  }
  void paintTriangle(Canvas c) {
    // paint something into screen
  }

  // GET requests
  String wikiArticle(String figure) {
    return 'Some supercool article';
  }

  void _cacheElements(String text) {
    // something must occurs inside this class
    // and cannot be executed outside
  }
}
