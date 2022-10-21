import 'package:flutter/cupertino.dart';

class CupertinoBottommBarProvider with ChangeNotifier {
  final CupertinoTabController _controller = CupertinoTabController();

  int defaultIndex = 0;
  int _currentIndex = 0;

  get pageController => _controller;
  get selectedIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void backToHome() {
    _controller.index = defaultIndex;
    notifyListeners();
  }
}
