import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

import '../bmi/bmi_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Text(
              "PCM BMI",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              child: Image.asset('assets/images/onboarding_illustration.png'),
            ),
            Text(
              "평촌경영고 BMI 계산기",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "BMI 계산기를 통해 건강을 관리해보세요",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: FilledButton(
                  onPressed: () {
                    Get.to(() => BmiScreen());
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      '시작하기',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
