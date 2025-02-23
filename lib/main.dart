import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm_bmi/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PCM BMI',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}