import 'package:api_learn/data/models/card_model.dart';
import 'package:api_learn/data/web_services/get_data_from_api.dart';

class GetDataFromWebServices {
  final GetDataFromAPI apiData;

  GetDataFromWebServices({required this.apiData});

  Future<List<CardModel>> fetchAllDataFromAPI() async {
    final List allCards = await apiData.fetchAllCards();

    return allCards.map((card) => CardModel.fromJSON(card)).toList();
  }
}
