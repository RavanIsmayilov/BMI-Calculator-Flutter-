import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/extension/num_extensions.dart';
import '../../utils/helpers/pager.dart';
import '../widgets/custom_app_button.dart';
import 'widgets/custom_age_card.dart';
import 'widgets/custom_gender_card.dart';
import 'widgets/custom_height_card.dart';
import 'widgets/custom_weight_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: AppColors.appBarTitle,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 220,
                  width: 180,
                  child: CustomAgeCard(
                    title: "Age",
                  ),
                ),
                SizedBox(
                  height: 220,
                  width: 180,
                  child: CustomWeightCard(
                    title: 'Weight(Kg)',
                  ),
                ),
              ],
            ),
            10.h,
            CustomHeightCard(),
            10.h,
            CustomGenderCard(),
            14.h,
            CustomAppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Pager.resultScreen(),
                  ),
                );
              },
              text: 'Calculate BMI',
              bgColor: AppColors.customBlue,
              frColor: AppColors.mainColor,
            ),
            14.h,
          ],
        ),
      ),
    );
  }
}
