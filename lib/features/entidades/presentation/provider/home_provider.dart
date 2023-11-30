import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int index = 0;

  changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
