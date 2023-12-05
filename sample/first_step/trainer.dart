import './person.dart';
import './pokemon.dart';
import './badge.dart';

class Trainer extends Person {
  final List<Badge> badges = [];
  final List<Pokemon> storedPokemons = [];
  Trainer(name) : super(name);

  void setBadge(Badge badge) {
    badges.add(badge);
  }

  void capturePokemon(Pokemon pokemon) {
    if (groupPokemons.length >= 6) {
      storedPokemons.add(pokemon);
    } else {
      groupPokemons.add(pokemon);
    }
  }
}
