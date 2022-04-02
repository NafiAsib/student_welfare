import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setInitial() {
    setIndex(0);
    // debugPrint(_currentIndex.toString());
    // print(_notifierState);
  }
}
