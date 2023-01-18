import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/ui/app_colors.dart';
import '../../core/ui/app_icons.dart';
import '../../core/ui/app_images.dart';
import '../../core/ui/app_text_styles.dart';
import '../../core/widgets/custom_category_button_widget.dart';
import 'widgets/custom_progress_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: IconButton(
          iconSize: 25,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.backgroundSearch,
        title: Image.asset(
          AppImages.logo,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundColor: AppColors.primary,
              radius: 20,
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 280,
                  width: constraints.maxWidth,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 87, vertical: 63),
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundSearch,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: SvgPicture.asset(AppImages.pikachu),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 11, 20, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pikachu',
                        style: AppTextStyles.textBold18,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        height: 20,
                        color: AppColors.iconColor,
                        AppIcons.favorite,
                      ),
                      const SizedBox(width: 15),
                      SvgPicture.asset(
                        height: 20,
                        color: AppColors.iconColor,
                        AppIcons.shared,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 11, 20, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cod: #0034',
                        style: AppTextStyles.textRegular14,
                      ),
                      const CustomCategoryButtonWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 5),
                  child: Text(
                    'Descriçāo',
                    style: AppTextStyles.textBold16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 5),
                  child: Text(
                    '"Charmeleon destrói seus oponentes sem pena com suas garras afiadas. Torna-se agressivo quando encontra um oponente forte e então a chama na ponta da sua cauda queima intensamente em uma cor azulada."',
                    textAlign: TextAlign.justify,
                    style: AppTextStyles.textSemiBold14,
                  ),
                ),
                const CustomProgressWidget(
                  variables: 'Vida',
                  color: AppColors.lifeLinearProgress,
                ),
                const CustomProgressWidget(
                  variables: 'Defesa',
                  color: AppColors.defenseLinearProgress,
                ),
                const CustomProgressWidget(
                  variables: 'Ataque',
                  color: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
