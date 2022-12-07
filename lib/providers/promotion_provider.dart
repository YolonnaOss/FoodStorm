import 'package:flutter/material.dart';

enum Cities { togliatty, samara }

class PromotionProvider extends ChangeNotifier {
  String sort = '';

  Cities? city = Cities.togliatty;
  String cityName = '';

  changeSort(String filter) {
    if (filter == 'Все') {
      sort = '';
      notifyListeners();
    } else {
      sort = filter;
      notifyListeners();
    }
  }

  changeCity(Cities? currentCyty, BuildContext context) {
    city = currentCyty;
    notifyListeners();
  }
}
