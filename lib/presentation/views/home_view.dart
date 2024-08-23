import 'package:api_learn/presentation/widgets/GridTile/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // child: GridView.builder(
        //   itemCount: ,  //TODO
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //   itemBuilder: (context, index) {
        //     return CustomGridTile(
        //       card: , //TODO
        //       );
        //   },
        // ),
      ),
    );
  }
}
