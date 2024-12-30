import 'package:flutter/material.dart';

class BmiProvider extends ChangeNotifier {
  double _height = 175.0;
  double _weight = 70.0;
  double _age = 30;
  bool _isMale = false;

  double get height => _height;
  double get weight => _weight;
  double get age => _age;
  bool get isMale => _isMale;

  void updateHeight(double value) {
    _height = value;
    notifyListeners();
  }

  void updateAge(double value) {
    _age = value;
    notifyListeners();
  }

  void updateWeight(double value) {
    _weight = value;
    notifyListeners();
  }

  void toggleGender() {
    _isMale = !_isMale;
    notifyListeners();
  }

  double calculateBmi() {
    return _weight / ((_height / 100) * (_height / 100));
  }

  String getBmiCategory() {
    double bmi = calculateBmi();
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi <= 29.9) {
      return "Overweight";
    } else if (bmi >= 30 && bmi <= 40) {
      return "Obesity";
    } else {
      return "Severe Obesity";
    }
  }
}
