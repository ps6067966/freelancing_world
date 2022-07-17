import 'package:flutter/cupertino.dart';
import 'package:freelancing_world/constants/theme_const.dart';
import 'package:freelancing_world/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Freelancing World',
      debugShowCheckedModeBanner: false,
      theme: ThemeService.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
