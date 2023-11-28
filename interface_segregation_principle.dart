abstract class Worker {
  void work();
  void sleep();
}

class Human implements Worker {
  void work() => print("I do a lot of work");
  void sleep() => print("I need 8 hours per night...");
}

class Robot implements Worker {
  void work() => print("I always work");
  void sleep() {} // ??
}
