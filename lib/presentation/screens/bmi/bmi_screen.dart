import 'package:flutter/material.dart';
import 'package:pcm_bmi/presentation/components/info_card.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Text(
                'PCM BMI',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 32),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    child: InfoCard(
                      name: 'Age',
                      value: "18",
                      onTap: (){},
                    ),
                  ),
                  SizedBox(width: 24),
                  Flexible(
                    child: InfoCard(
                      name: 'Weight (KG)',
                      value: "52",
                      onTap: (){},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
