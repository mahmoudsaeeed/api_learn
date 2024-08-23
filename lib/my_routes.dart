import 'package:api_learn/constants.dart';
import 'package:api_learn/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  Route? myRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeView:
        {
          return MaterialPageRoute(builder: (context) {
            return const HomeView();
          });
        }
    }

    return null;
  }
}
