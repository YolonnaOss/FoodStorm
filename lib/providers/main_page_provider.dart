import 'package:flutter/material.dart';

class MainPageProvider extends ChangeNotifier {
  String sort = '';

  changeSort(String filter) {
    sort = filter;
    notifyListeners();
  }
}
