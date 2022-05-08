import 'package:bloc/bloc.dart';
import 'package:breakingbad_app/data/model/Character.dart';
import 'package:breakingbad_app/data/repository/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final characters_repository characters_repo;
  late List<Character> characters;
  CharactersCubit(this.characters_repo) : super(CharactersInitial());


  List<Character> getAllCharacters(){
    characters_repo.getAllCharacters().then((characters) {
      emit(charatersLoaded(characters));
      this.characters =characters;
    });
    return characters;
  }


}
