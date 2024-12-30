import 'package:bmi_app/ui/splash/widgets/titlle_and_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/extension/num_extensions.dart';
import '../../utils/helpers/pager.dart';
import '../widgets/custom_app_button.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _checkFirstLaunch();
  }

  Future<void> _checkFirstLaunch() async {
    final box = Hive.box('settingsBox');
    bool isFirstLaunch = box.get('isFirstLaunch', defaultValue: true);

    if (isFirstLaunch) {
      // İlk dəfə açılış üçün göstərin və sonra dəyəri yeniləyin
      await box.put('isFirstLaunch', false);

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Pager.home),
        );
      });
    } else {
      // Splash keçid etmədən birbaşa əsas ekrana keçin
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Pager.home),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customBlue,
      body: Column(
        children: [
          80.h,
          Text('BMiDO',
              style: TextStyle(
                  fontSize: 30,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  )),
          50.h,
          SvgPicture.asset(
            'assets/splash.svg',
          ),
          70.h,
          TitlleAndSubtitle(),
          40.h,
          CustomAppButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Pager.home),
              );
            },
            text: "Get Started",
            bgColor: AppColors.mainColor,
            frColor: AppColors.appBarTitle,
          )
        ],
      ),
    );
  }
}
