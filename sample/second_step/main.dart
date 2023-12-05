import './pokemon.dart';
import './leader.dart';
import './trainer.dart';
import 'battle.dart';
import 'critical_hit.dart';
import 'super_effective.dart';

void main() {
  final Trainer trainer = Trainer('Rafael');

  final Pokemon pikachu = Pokemon('Pikachu', 'Eletric');
  final Pokemon charmander = Pokemon('Charmander', 'Fire');
  final Pokemon squirtle = Pokemon('Squirtle', 'Water');
  final Pokemon bulbasaur = Pokemon('Bulbasaur', 'Grass');
  final Pokemon pidgeotto = Pokemon('Pidgeotto', 'Wind');
  final Pokemon butterfree = Pokemon('Butterfree', 'Bug');
  final Pokemon krabby = Pokemon('Krabby', 'Water');

  trainer.capturePokemon(pikachu);
  trainer.capturePokemon(charmander);
  trainer.capturePokemon(squirtle);
  trainer.capturePokemon(bulbasaur);
  trainer.capturePokemon(pidgeotto);
  trainer.capturePokemon(butterfree);
  // this one will be stored
  trainer.capturePokemon(krabby);

  final Leader leader = Leader('Brock', 'Rock', 'Bolder');

  final Pokemon geodude = Pokemon('Geodude', 'Rock');
  final Pokemon onix = Pokemon('Onix', 'Fire');

  leader.capturePokemon(geodude);
  leader.capturePokemon(onix);

  print('=== Group ===');
  for (var pokemon in trainer.group) {
    print("${pokemon.name} - ${pokemon.type}");
  }

  print('=== Stored ===');
  for (var pokemon in trainer.storedPokemons) {
    print("${pokemon.name} - ${pokemon.type}");
  }

  print('=== Battle ===');
  print('=== Squirtle vs Geodude ===');
  final criticalHit = CriticalHit(6);
  final superEffective = SuperEffective(6, 'Fire', ['Water', 'Earth']);
  final int hasCritical = Battle().hit(criticalHit);
  final int hasSuperEffect = Battle().hit(superEffective);
  print('Critical damage: $hasCritical');
  print('Super Effect damage: $hasSuperEffect');

  trainer.addBadge(leader.badge);
  print('=== Badges ===');
  for (var badge in trainer.badges) {
    print(badge.name);
  }
}
