import 'dart:ui';

import 'package:provider_animation/state.dart';
import 'package:provider_animation/utils/colors.dart';

class CardModel {
  final double balance;

  final List<Color> colors;

  final int id;

  CardModel(
    this.id,
    this.balance,
    this.colors,
  );

  @override
  String toString() {
    return 'CardModel{balance: $balance, id: $id}';
  }
}

List<CardModel> cards = List.generate(
        AppColors.gradientColors.length,
        (index) => CardModel(
            index + 1, (index + 1) * 125, AppColors.gradientColors[index]))
    .toList();

extension CardsExt on List<CardModel> {
  bool isSelectedCard(AppState appState, int index) {
    return appState.currentCard != null && appState.currentCard != this[index];
  }
}
