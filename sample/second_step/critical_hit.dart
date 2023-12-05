import 'dart:math';

import './hit.dart';

class CriticalHit implements Hit {
  final int damage;
  CriticalHit(int this.damage);

  @override
  int calculate() {
    var rgn = Random().nextInt(10);
    if (rgn >= 8) {
      return damage * 2;
    }

    return damage;
  }
}
