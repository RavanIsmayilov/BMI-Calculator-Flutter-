import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bmi_providers.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/extension/num_extensions.dart';
import '../../widgets/card_number.dart';
import '../../widgets/card_title.dart';
import 'custom_button.dart';

class CustomWeightCard extends StatelessWidget {
  const CustomWeightCard({
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
            number: bmiProvider.weight.toStringAsFixed(1),
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
                  final currentWeight = Provider.of<BmiProvider>(context, listen: false).weight;
                  Provider.of<BmiProvider>(context, listen: false).updateWeight(currentWeight + 1);
                  debugPrint("Weight artırıldı: ${currentWeight + 1}");
                },
              ),
              CustomButton(
                icon: const Icon(
                  Icons.remove,
                ),
                onPressed: () {
                  // Weight azaldırıq
                  final currentWeight = Provider.of<BmiProvider>(context, listen: false).weight;
                  Provider.of<BmiProvider>(context, listen: false).updateWeight(currentWeight - 1);
                  debugPrint("Weight azaldıldı: ${currentWeight - 1}");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
