import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({super.key, required this.number});

  final String number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: const TextStyle(
        color: AppColors.customBlue,
        fontSize: 48,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
