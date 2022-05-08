

import 'package:breakingbad_app/data/web_services/characters_web_services.dart';

import '../model/Character.dart';

class characters_repository{
   final  characters_webService chracters_webService;

  characters_repository(this.chracters_webService);

   Future<List<Character>> getAllCharacters() async{
     final characters =await chracters_webService.getAllCharacters();
     return characters.map((character) => Character.fromjson(character)).toList();

   }


}