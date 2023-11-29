import './worker.dart';

class Robot implements Worker {
  @override
  String work() {
    return "I always work";
  }
}
