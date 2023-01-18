import 'package:flutter/material.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_text_styles.dart';

class CustomProgressWidget extends StatelessWidget {
  const CustomProgressWidget(
      {super.key, required this.variables, required this.color});

  final String variables;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Text(
              variables,
              style: AppTextStyles.textSemiBold12,
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 35),
              child: LinearProgressIndicator(
                minHeight: 7,
                value: 10,
                color: color,
                backgroundColor: AppColors.backgroundLinearProgress,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
