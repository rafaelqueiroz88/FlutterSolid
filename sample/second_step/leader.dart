import './badge.dart';
import './person.dart';
import './manage_pokemon.dart';

class Leader extends Person with ManagePokemon {
  late final String typeMaster;
  late final Badge badge;

  Leader(name, typeMaster, badge)
      : this.typeMaster = typeMaster,
        this.badge = Badge(badge),
        super(name);
}
