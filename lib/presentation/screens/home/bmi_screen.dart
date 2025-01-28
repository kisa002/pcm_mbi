import 'package:flutter/material.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      child: SafeArea(
        child: Center(
          child: Text('BMI Screen'),
        ),
      ),
    );
  }
}
