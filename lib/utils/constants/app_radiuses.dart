import 'package:flutter/material.dart';

class AppRadiuses {
  AppRadiuses._();

  static const a16 = BorderRadius.all(Radius.circular(16));

  static const aR16 = RoundedRectangleBorder(borderRadius: AppRadiuses.a16);
}