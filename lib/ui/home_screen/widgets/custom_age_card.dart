import 'package:bmi_app/utils/extension/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bmi_providers.dart';
import '../../../utils/constants/app_colors.dart';
import '../../widgets/card_number.dart';
import '../../widgets/card_title.dart';
import '../widgets/custom_button.dart';

class CustomAgeCard extends StatelessWidget {
  const CustomAgeCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiProvider>(context);
    return Card(
      color: AppColors.boxColor,
      elevation: 2,
      child: Column(
        children: [
          14.h,
          CardTitle(title: title),
          14.h,
          CardNumber(
            number: "${bmiProvider.age.toInt()}",
          ),
          14.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon: const Icon(
                  Icons.add,
                ),
                onPressed: () {
                  final currentAge =
                      Provider.of<BmiProvider>(context, listen: false).age;
                  Provider.of<BmiProvider>(context, listen: false)
                      .updateAge(currentAge + 1);
                  debugPrint("Age artırıldı: ${currentAge + 1}");
                },
              ),
              CustomButton(
                icon: const Icon(
                  Icons.remove,
                ),
                onPressed: () {
                  final currentAge =
                      Provider.of<BmiProvider>(context, listen: false).age;
                  Provider.of<BmiProvider>(context, listen: false)
                      .updateAge(currentAge - 1);
                  debugPrint("Age azaldıldı: ${currentAge - 1}");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
