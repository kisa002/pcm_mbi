import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm_bmi/presentation/components/info_card.dart';
import 'package:pcm_bmi/presentation/screens/bmi/bmi_controller.dart';
import 'package:pcm_bmi/presentation/theme/app_colors.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BmiController());

    return Obx(
      () => Material(
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
                        value: controller.age.string,
                        onDecrease: controller.decreaseAge,
                        onIncrease: controller.increaseAge,
                      ),
                    ),
                    SizedBox(width: 24),
                    Flexible(
                      child: InfoCard(
                        name: 'Weight (KG)',
                        value: controller.weight.string,
                        onDecrease: controller.decreaseWeight,
                        onIncrease: controller.increaseWeight,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                buildCardContainer(
                  children: [
                    Text(
                      'Height (CM)',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      controller.height.value.ceil().toString(),
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Slider(
                      value: controller.height.value,
                      min: controller.minHeight,
                      max: controller.maxHeight,
                      divisions:
                          (controller.maxHeight - controller.minHeight).toInt(),
                      onChanged: controller.setHeight,
                    )
                  ],
                ),
                SizedBox(height: 24),
                buildCardContainer(
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 12,
                      children: [
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          value: controller.isFemale.value,
                          onChanged: controller.setIsFemale,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCardContainer({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
