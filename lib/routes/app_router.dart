import 'package:breakingbad_app/constants/strings.dart';

import 'package:flutter/material.dart';

import '../layout/screens/caracter_details.dart';
import '../layout/screens/caracters_screen.dart';
class AppRouter{

  Route? generateRoute(RouteSettings setting){

    switch (setting.name) {
      case allCaractersRoute:
      return MaterialPageRoute(builder:(_) =>caracters_screen());
      case caracterDetailsScreen:
      return MaterialPageRoute(builder:(_) =>caractersDetails_screen());
  }
  }

}