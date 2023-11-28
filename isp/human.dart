import './worker.dart';
import './sleeper.dart';

class Human implements Worker, Sleeper {
  String work() {
    return "I do a lot of work";
  }

  String sleep() {
    return "I need 10 hours per night...";
  }
}
