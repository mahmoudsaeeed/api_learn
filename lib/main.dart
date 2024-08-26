import 'package:api_learn/constants.dart';
import 'package:api_learn/my_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final MyRoutes myRoutes = MyRoutes();
    return MaterialApp(
      onGenerateRoute: myRoutes.myRoutes,
      initialRoute: homeView,
    );
  }
}
