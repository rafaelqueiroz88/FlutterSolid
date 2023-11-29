import './worker.dart';
import './sleeper.dart';

class Human implements Worker, Sleeper {
  @override
  String work() {
    return "I do a lot of work";
  }

  @override
  String sleep() {
    return "I need 10 hours per night...";
  }
}
