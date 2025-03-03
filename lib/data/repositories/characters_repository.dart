import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }

  Future<Character> getCharacter(dynamic id) async {
    final character = await charactersWebServices.getCharacter(id);
    return Character.fromJson(character);
  }
}
