import './human.dart';
import './robot.dart';

void main() {
  final Human human = Human();
  final Robot robot = Robot();

  // Humans has work and sleep
  print(human.work());
  print(human.sleep());

  // Robots only works
  print(robot.work());
}
