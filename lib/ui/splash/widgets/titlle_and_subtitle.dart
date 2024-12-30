import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/extension/num_extensions.dart';

class TitlleAndSubtitle extends StatelessWidget {
  const TitlleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get Started with\nTracking Your Health!",
          style: TextStyle(
            fontSize: 25,
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0
          ),
        ),
        8.h,
        Text(
          "Calculate your BMI and stay on top of\nyour wellness journey, effortlessly.",
          style: TextStyle(
            fontSize: 16,
            color: AppColors.subtitleColor,
            letterSpacing: 1.0
          ),
        ),
      ],
    );
  }
}
