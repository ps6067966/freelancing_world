import 'package:flutter/material.dart';
import 'package:freelancing_world/constants/theme_const.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelancing World',
      debugShowCheckedModeBanner: false,
      theme: ThemeService.lightTheme,
      home: const HomeScreen(),
    );
  }
}
