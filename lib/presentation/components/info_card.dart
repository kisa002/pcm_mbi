import 'package:flutter/material.dart';
import 'package:pcm_bmi/presentation/components/circular_button.dart';

import '../theme/app_colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.value,
    required this.onDecrease,
    required this.onIncrease,
  });

  final String name;
  final String value;
  final Function() onIncrease, onDecrease;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            value,
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 60,
                fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 28,
            children: [
              CircularButton(
                onTap: onDecrease,
                child: Icon(
                  Icons.remove,
                  color: AppColors.white,
                ),
              ),
              CircularButton(
                onTap: onIncrease,
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
