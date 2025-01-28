import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.onTap, required this.child});

  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.all(4),
          child: child,
        ),
      ),
    );
  }
}
