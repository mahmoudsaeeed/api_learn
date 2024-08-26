import 'package:api_learn/bloc/DisplayCard/display_card_cubit.dart';
import 'package:api_learn/presentation/widgets/GridTile/custom_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<DisplayCardCubit>(context).getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<DisplayCardCubit, DisplayCardState>(
        builder: (context, state) {
          if (state is DisplayCardLoaded) {
            return Container(
              color: Colors.green,
              child: GridView.builder(
                itemCount: state.allData.length, //TODO
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2 / 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomGridTile(
                      card: state.allData[index], //TODO
                    ),
                  );
                },
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
