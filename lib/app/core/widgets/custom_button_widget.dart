import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ui/app_colors.dart';
import '../ui/app_icons.dart';
import '../ui/app_text_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(70, 8, 23, 9),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.secondary.withOpacity(0.7),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Começar',
              style: AppTextStyles.textBold18,
            ),
            SvgPicture.asset(
              AppIcons.arrowRight,
              height: 17,
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
