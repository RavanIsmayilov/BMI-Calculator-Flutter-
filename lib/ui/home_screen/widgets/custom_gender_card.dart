import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bmi_providers.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extension/num_extensions.dart';
import '../../widgets/card_title.dart';
import 'custom_switch.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiProvider>(context);

    return Padding(
      padding: AppPaddings.h10,
      child: SizedBox(
        height: 160,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: AppColors.boxColor,
          elevation: 2,
          child: Column(
            children: [
              14.h,
              const CardTitle(title: "Gender"),
              10.h,
              Padding(
                padding: AppPaddings.h20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CardTitle(title: "Male"),
                    CustomSwitch(
                      value: bmiProvider.isMale,
                      onChanged: (value) {
                        bmiProvider.toggleGender();
                      },
                    ),
                    const CardTitle(title: "Female"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
