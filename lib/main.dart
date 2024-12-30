import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'providers/bmi_providers.dart';
import 'ui/app.dart';
import 'ui/home_screen/home_screen.dart';
import 'ui/splash/splash.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settingsBox');

  // İlk dəfə açılış vəziyyətini yoxlayın
  final box = Hive.box('settingsBox');
  bool isFirstLaunch = box.get('isFirstLaunch', defaultValue: true);

  // Uyğun ekranı təyin edin
  Widget initialScreen = isFirstLaunch ? const Splash() : const HomeScreen();

   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BmiProvider()),
      ],
      child: MyApp(initialScreen:initialScreen),
    ),
  );
}
