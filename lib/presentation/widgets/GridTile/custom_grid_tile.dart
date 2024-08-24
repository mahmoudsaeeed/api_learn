import 'package:api_learn/data/models/card_model.dart';
import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({super.key, required this.card,});

  final CardModel card ;
  @override
  Widget build(BuildContext context) {
    return const GridTile(
      footer: null,
      child: Text(""),
      
      );
  }
}