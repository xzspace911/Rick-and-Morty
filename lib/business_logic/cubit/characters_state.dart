part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  CharactersLoaded(this.characters);
}
class CharacterLoaded extends CharactersState {
  final Character character;
  CharacterLoaded(this.character);
}

class CharactersError extends CharactersState {
  final String error;
  CharactersError(this.error);
}
