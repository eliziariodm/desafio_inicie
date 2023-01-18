import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_icons.dart';
import '../../../core/ui/app_text_styles.dart';

class CustomSearchButtonWidget extends StatelessWidget {
  const CustomSearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 200,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.borderSearch.withOpacity(0.9),
            blurRadius: 3,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        onChanged: ((value) {
          //controller.search(value);
        }),
        cursorColor: AppColors.primary,
        style: AppTextStyles.textRegular16.merge(const TextStyle(height: 1)),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 12, 0),
          fillColor: AppColors.white,
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: AppColors.borderSearch,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: AppColors.borderSearch,
            ),
          ),
          suffixIcon: SizedBox(
            child: Container(
              width: 40,
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
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
              child: SvgPicture.asset(AppIcons.search),
            ),
          ),
        ),
      ),
    );
  }
}
