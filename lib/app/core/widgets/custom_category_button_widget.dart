import 'package:flutter/material.dart';

import '../ui/app_colors.dart';
import '../ui/app_text_styles.dart';

class CustomCategoryButtonWidget extends StatelessWidget {
  const CustomCategoryButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 80,
      padding: const EdgeInsets.only(right: 7),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.primary,
        ),
        child: Text(
          'Normal',
          style: AppTextStyles.textRegular14.merge(
            const TextStyle(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
