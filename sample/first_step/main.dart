import './pokemon.dart';
import './leader.dart';
import './trainer.dart';
import 'badge.dart';

void main() {
  final Trainer trainer = Trainer('Rafael');

  final Pokemon pikachu = Pokemon('Pikachu', 'Eletric');
  final Pokemon charmander = Pokemon('Charmander', 'Fire');
  final Pokemon squirtle = Pokemon('Squirtle', 'Water');
  final Pokemon bulbasaur = Pokemon('Bulbasaur', 'Grass');
  final Pokemon pidgeotto = Pokemon('Pidgeotto', 'Wind');
  final Pokemon butterfree = Pokemon('Butterfree', 'Bug');
  final Pokemon krabby = Pokemon('Krabby', 'Water');

  final Badge bolder = Badge('Bolder');
  final Leader leader = Leader('Brock', 'Rock', bolder);

  trainer.capturePokemon(pikachu);
  trainer.capturePokemon(charmander);
  trainer.capturePokemon(squirtle);
  trainer.capturePokemon(bulbasaur);
  trainer.capturePokemon(pidgeotto);
  trainer.capturePokemon(butterfree);
  trainer.capturePokemon(krabby);

  print('Group');
  for (var pokemon in trainer.groupPokemons) {
    print("${pokemon.name} - ${pokemon.type}");
  }

  print('Stored');
  for (var pokemon in trainer.storedPokemons) {
    print("${pokemon.name} - ${pokemon.type}");
  }

  trainer.setBadge(leader.badge);

  print('Badges');
  for (var badge in trainer.badges) {
    print(badge.name);
  }
}
