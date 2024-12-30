import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.icon});

  final void Function()? onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          minimumSize: const Size(50, 50),
          backgroundColor: AppColors.buttonColor,
          foregroundColor: AppColors.boxColor),
      child: icon,
    );
  }
}
