import './pokemon.dart';

class Person {
  final String name;
  final List<Pokemon> groupPokemons = [];
  Person(this.name);
  String whatYourName() => name;
}
