import 'package:flutter/material.dart';

class FractionallySizedBoxViewModel extends ChangeNotifier {
  double widthFactor = 0.5;
  double heightFactor = 0.5;

  void updateWidthFactor(double newWidthFactor) {
    widthFactor = newWidthFactor;
    notifyListeners();
  }

  void updateHeightFactor(double newHeightFactor) {
    heightFactor = newHeightFactor;
    notifyListeners();
  }
}
