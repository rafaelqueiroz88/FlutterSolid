import './pokemon.dart';

mixin ManagePokemon {
  final List<Pokemon> group = [];
  final List<Pokemon> storedPokemons = [];

  void capturePokemon(Pokemon pokemon) {
    if (group.length >= 6) {
      storedPokemons.add(pokemon);
    } else {
      group.add(pokemon);
    }
  }
}
