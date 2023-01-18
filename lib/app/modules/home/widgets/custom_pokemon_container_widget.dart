import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_images.dart';
import '../../../core/ui/app_text_styles.dart';
import '../../../core/widgets/custom_category_button_widget.dart';

class CustomPokemonContainerWidget extends StatelessWidget {
  const CustomPokemonContainerWidget({super.key, required this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.backgroundSearch.withOpacity(0.7),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Pikachu',
                      style: AppTextStyles.textBold16,
                    ),
                  ),
                  const Flexible(
                    flex: 2,
                    child: CustomCategoryButtonWidget(),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      '#COD',
                      style: AppTextStyles.textRegular12,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SvgPicture.asset(AppImages.pikachu),
            )
          ],
        ),
      ),
    );
  }
}
