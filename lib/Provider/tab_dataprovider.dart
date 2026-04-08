import 'package:flutter/material.dart';

class TabDataProvider with ChangeNotifier {
  String _tab = "none";

  String get tabData => _tab;

  void ChangeTabDat(String newData) {
    _tab = newData;
    notifyListeners();
  }
}
