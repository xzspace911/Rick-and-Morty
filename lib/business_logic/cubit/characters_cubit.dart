// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/repositories/characters_repository.dart';
import 'package:meta/meta.dart';
part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];  
  Character character = Character();
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  Future<void> getAllCharacters() async {
    try {
      emit(CharactersLoading());
      characters = await charactersRepository.getAllCharacters();
      emit(CharactersLoaded(characters));
    } catch (e) {
      emit(CharactersError(e.toString()));
    }
  }

  Future<void> getCharacter(dynamic id) async {
    try {
      emit(CharactersLoading());
      character = await charactersRepository.getCharacter(id);
      emit(CharacterLoaded(character));
    } catch (e) {
      emit(CharactersError(e.toString()));
    }
  }
}
