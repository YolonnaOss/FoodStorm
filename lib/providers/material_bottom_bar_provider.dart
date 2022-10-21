import 'package:flutter/material.dart';

class MaterialBottomBarProvider extends ChangeNotifier {
  final PageController _controller = PageController();

  int defaultIndex = 0;
  int _currentIndex = 0;

  get pageController => _controller;
  get selectedIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void backToHome() {
    _controller.jumpToPage(defaultIndex);
    notifyListeners();
  }

  void onItemTapped(int index) {
    _controller.jumpToPage(index);
    notifyListeners();
  }
}
