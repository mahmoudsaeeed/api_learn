import 'package:api_learn/data/models/card_model.dart';
import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({
    super.key,
    required this.card,
  });

  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Text(card.title),
      child: Container(
        color: Colors.grey,
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/loading.gif",
          image: card.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
