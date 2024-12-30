import '../../../utils/extension/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bmi_providers.dart';
import '../../../utils/constants/app_colors.dart';

class ResultScreenInfos extends StatelessWidget {
  const ResultScreenInfos({super.key});

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiProvider>(context);
    return Column(
      children: [
        28.h,
        const Text(
          "BMI Results",
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 32,
          ),
        ),
        Text(
          bmiProvider.calculateBmi().toStringAsFixed(2),
          style: const TextStyle(
            color: AppColors.customBlue,
            fontSize: 122,
          ),
        ),
        Text(
          bmiProvider.getBmiCategory(),
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 32,
          ),
        ),
        12.h,
        const Text(
          "Underweight: BMI less than 18.5",
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 20,
          ),
        ),
        const Text(
          "Normal weight: BMI 18.5 to 24.9",
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 20,
          ),
        ),
        const Text(
          "Overweight: BMI 25 to 29.9",
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 20,
          ),
        ),
        const Text(
          "Obesity: 30 to 40",
          style: TextStyle(
            color: AppColors.appBarTitle,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
