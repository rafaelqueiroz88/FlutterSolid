import './human.dart';
import './robot.dart';

void main() {
  final Human human = Human();
  final Robot robot = Robot();

  print(human.work());
  print(human.sleep());
  print(robot.work());
}
