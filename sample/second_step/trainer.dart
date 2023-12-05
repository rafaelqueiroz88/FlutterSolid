import './person.dart';
import './manage_pokemon.dart';
import './manage_badge.dart';

class Trainer extends Person with ManagePokemon, ManageBadge {
  Trainer(name) : super(name);
}
