import 'package:breakingbad_app/constants/strings.dart';
import 'package:breakingbad_app/data/repository/characters_repo.dart';
import 'package:breakingbad_app/logic/cubit/characters_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/web_services/characters_web_services.dart';
import '../layout/screens/caracter_details.dart';
import '../layout/screens/caracters_screen.dart';
class AppRouter{

  late characters_repository characters_repo;
  late CharactersCubit characters_cubit;
  AppRouter(){
    characters_repo = characters_repository(characters_webService());
    characters_cubit= CharactersCubit(characters_repo);
  }

  Route? generateRoute(RouteSettings setting){

    switch (setting.name) {
      case allCaractersRoute:
      return MaterialPageRoute(builder:(_) =>BlocProvider(
        create: (context) => characters_cubit,
        child: caracters_screen(),
      ));
      case caracterDetailsScreen:
      return MaterialPageRoute(builder:(_) =>caractersDetails_screen());
  }
  }

}