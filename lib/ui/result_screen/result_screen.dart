import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/extension/num_extensions.dart';
import '../widgets/custom_app_button.dart';
import 'widgets/result_screen_infos.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
        child: Padding(
          padding: AppPaddings.a16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Body Mass Index",
                style: TextStyle(
                  color: AppColors.appBarTitle,
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                ),
              ),
              16.h,
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 480,
                child: Card(
                    color: AppColors.boxColor,
                    elevation: 2,
                    child: ResultScreenInfos()
                    ),
              ),
              12.h,
              CustomAppButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                text: 'Save the results',
                bgColor: AppColors.customBlue,
                frColor: AppColors.mainColor,
              ),
              12.h,
            ],
          ),
        ),
      ),
    );
  }
}
