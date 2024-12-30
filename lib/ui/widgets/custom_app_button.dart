import 'package:flutter/material.dart';

import '../../utils/constants/app_paddings.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton(
      {super.key,
      this.onPressed,
      required this.text,
      required this.bgColor,
      required this.frColor});

  final void Function()? onPressed;
  final String text;
  final Color bgColor;
  final Color frColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h20,
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: frColor,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
