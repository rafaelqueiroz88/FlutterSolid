# Flutter & Dart S.O.L.I.D

O termo SOLID é um acronimo para cinco famosos princípios. São eles:
Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation e Dependency Inversion.
Vamos ver alguns exemplos na prática.

<ul>
  <li>
    <a href="#srp">Princípio da responsabilidade única</a>
  </li>
  <li>
    <a href="#ocp">Princípio do aberto-fechado</a>
  </li>
  <li>
    <a href="#lsp">Princípio da substituição de Liskov</a>
  </li>
  <li>
    <a href="#isp">Princípio da segregação por interface</a>
  </li>
  <li>
    <a href="#srp">Princípio da inversão de dependência</a>
  </li>
</ul>

<a id="srp"></a>

## Single Responsibility Principles
### Princípio da responsabilidade única

Abreviada como SRP, este princípio afirma (de maneira muito intuitiva) que uma classe deve ter apenas uma única razão para mudar. Em outras palavras, você deve criar classes com uma única "responsabilidade" para que sejam mais fáceis de manter e mais difíceis de quebrar.
Vejamos no exemplo como seria uma classe responsável por que calcular a área de uma forma (seja ela um quadrado, circulo ou triangulo), além de resolver outras questões como desenhar as formas na tela e etc.

<details>
  <summary>Classe com multiplas responsabilidades</summary>

  [Classe com multiplas responsabilidades](single_responsibility_principle_sample.dart)
  ```
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
      return (r * r) * 3.1415;
    }

    double triangleArea(double b, double h) {
      return (b * h) / 2;
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
  ```
</details>

<details>
  <summary>Aplicando SRP</summary>

  Agora nossas tarefas estão divididas em diferentes responsabilidades. Vejamos como
  como ficam as classes que foram geradas a partir daí.

  [SRP Main](srp/main.dart)
  ```
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
  ```

  [SRP Shape](srp/shape.dart)
  ```
  abstract class Shape {
    double area();
  }
  ```

  [SRP Rectangle](srp/rectangle.dart)
  ```
  import './shape.dart';

  class Rectangle extends Shape {
    double width;
    double heigth;
    Rectangle(this.width, this.heigth);

    @override
    double area() => width * heigth;
  }
  ```

  [SRP Triangle](srp/triangle.dart)
  ```
  import './shape.dart';

  class Triangle extends Shape {
    double base;
    double height;
    Triangle(this.base, this.height);

    @override
    double area() => (base * height) / 2;
  }
  ```

  [SRP Circle](srp/circle.dart)
  ```
  import './shape.dart';

  class Circle extends Shape {
    final double radius;
    Circle(this.radius);

    @override
    double area() => 3.1415 * (radius * radius);
  }
  ```
</details>

<a id="ocp"></a>

## Open-Closed Principle
### Princípio do Abert-Fechado

Este princípio resumidamente diz que: Classes precisam estar abertas para extensão mas
fechadas para mudanças. Ou seja, o crescimento da classe acontecer através de extensões, heranças e etc.

<details>
  <summary>Classe implementada para mudar ao invés de ser extendida</summary>

  Vejamos um exemplo de uma classe onde não se aplica o príncipio de aberto e fechado.

  [Classe Implementada sem o Princípio](open_closed_principle_sample.dart)
  ```
    class Rectangle {
      final double width;
      final double height;
      const Rectangle(this.width, this.height);
    }

    class Circle {
      final double radius;
      const Circle(this.radius);

      double get PI => 3.1415;
    }

    class AreaCalculator {
      double calculate(Object shape) {
        if (shape is Rectangle) {
          return shape.width * shape.height;
        } else {
          final c = shape as Circle;
          return c.radius * c.radius * c.PI;
        }
      }
    }
  ```
</details>

<details>
  <summary>Aplicando OCP</summary>

  [OCP Main](ocp/main.dart)
  ```
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
  ```

  [OCP Circle](ocp/circle.dart)
  ```
  import './area.dart';

  class Circle extends Area {
    final double radius;
    const Circle(this.radius);

    @override
    double computeArea() => radius * radius * 3.1415;
  }
  ```

  [OCP Rectangle](ocp/rectangle.dart)
  ```
  import './area.dart';

  class Rectangle extends Area {
    final double width;
    final double height;
    const Rectangle(this.width, this.height);

    @override
    double computeArea() => width * height;
  }
  ```

  [OCP Area](ocp/area.dart)
  ```
  abstract class Area {
    const Area();
    double computeArea();
  }
  ```

  [OCP AreaCalculator](ocp/area_calculator.dart)
  ```
  import './area.dart';

  class AreaCalculator {
    double calculate(Area shape) => shape.computeArea();
  }
  ```
</details>
