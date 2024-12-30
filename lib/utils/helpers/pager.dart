import 'package:flutter/material.dart';

import '../../ui/home_screen/home_screen.dart';
import '../../ui/result_screen/result_screen.dart';

class Pager {
  Pager._();

  static Widget get home => const HomeScreen();
  static Widget resultScreen() => const ResultScreen();
}
