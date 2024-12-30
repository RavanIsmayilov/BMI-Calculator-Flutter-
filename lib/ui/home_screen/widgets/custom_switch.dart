import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key, required this.value, this.onChanged});

  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 80,
      child: FittedBox(
        fit: BoxFit.values[0],
        child: Switch(
          value: value,
          onChanged: onChanged,
          inactiveThumbColor: AppColors.customBlue,
          activeColor: AppColors.activeThumbColor,
        ),
      ),
    );
  }
}
