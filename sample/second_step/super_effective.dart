import './hit.dart';

class SuperEffective implements Hit {
  final int damage;
  String? damageType;
  List<String>? desadvantages;
  SuperEffective(this.damage, this.damageType, this.desadvantages);

  @override
  int calculate() {
    if (desadvantages!.contains(damageType)) {
      return damage * 2;
    }

    return damage;
  }
}
