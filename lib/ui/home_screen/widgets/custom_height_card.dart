import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bmi_providers.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extension/num_extensions.dart';
import '../../widgets/card_number.dart';
import '../../widgets/card_title.dart';

class CustomHeightCard extends StatelessWidget {
  const CustomHeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiProvider>(context, listen: false);

    return Padding(
      padding: AppPaddings.h10,
      child: SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: AppColors.boxColor,
          elevation: 2,
          child: Column(
            children: [
              10.h,
              const CardTitle(title: "Height (CM)"),
              14.h,
              CardNumber(
                number: "${bmiProvider.height.toInt()}",
              ),
              Slider(
                activeColor: AppColors.sliderColor,
                inactiveColor: AppColors.sliderColor,
                thumbColor: AppColors.customBlue,
                max: 300,
                min: 50,
                value: bmiProvider.height,
                onChanged: (value) {
                  bmiProvider.updateHeight(value);
                  debugPrint("Height dəyişdi: $value");
                },
              ),
              const Padding(
                padding: AppPaddings.h24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("50 cm"), Text("300 cm")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
