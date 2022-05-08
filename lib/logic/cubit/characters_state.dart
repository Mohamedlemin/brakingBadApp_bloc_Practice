part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}
class charatersLoaded extends CharactersState{
   final List<Character> characters;

  charatersLoaded(this.characters);


}