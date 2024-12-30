import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialScreen});
  final Widget initialScreen;

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: initialScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
