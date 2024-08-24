import 'package:api_learn/data/models/card_model.dart';
import 'package:api_learn/data/repo/get_data_from_web_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'display_card_state.dart';

class DisplayCardCubit extends Cubit<DisplayCardState> {
  DisplayCardCubit(this.getDataFromWebServices) : super(DisplayCardInitial());

  final GetDataFromWebServices getDataFromWebServices;
  late List cards;

  Future<List> getAllData() async {
    await getDataFromWebServices.fetchAllDataFromAPI().then((cards) {
      emit(DisplayCardLoaded(cards));
      this.cards = cards;

      return cards;
    });

    return [];
  }
}
