part of 'display_card_cubit.dart';

sealed class DisplayCardState {}

final class DisplayCardInitial extends DisplayCardState {}

class DisplayCardLoaded extends DisplayCardState {
  final List<CardModel> allData;

  DisplayCardLoaded(this.allData);
}
