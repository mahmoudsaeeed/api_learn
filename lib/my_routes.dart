import 'package:api_learn/bloc/DisplayCard/display_card_cubit.dart';
import 'package:api_learn/constants.dart';
import 'package:api_learn/data/repo/get_data_from_web_services.dart';
import 'package:api_learn/data/web_services/get_data_from_api.dart';
import 'package:api_learn/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRoutes {
  Route? myRoutes(RouteSettings settings) {
    final GetDataFromWebServices data =
        GetDataFromWebServices(apiData: GetDataFromAPI());
    final DisplayCardCubit displayCard = DisplayCardCubit(data);
    switch (settings.name) {
      case homeView:
        {
          return MaterialPageRoute(builder: (context) {
            return BlocProvider(
              create: (context) => displayCard,
              child: const HomeView(),
            );
          });
        }
    }

    return null;
  }
}
