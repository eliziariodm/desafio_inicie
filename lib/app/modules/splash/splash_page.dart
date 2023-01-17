import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/ui/app_images.dart';
import '../../core/ui/app_text_styles.dart';
import '../../routes/app_pages.dart';
import 'widgets/custom_button_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.pokemons,
                fit: BoxFit.cover,
                height: 371,
                width: 350,
              ),
              SizedBox(height: constraints.maxHeight * 0.01),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Explore o mundo dos ',
                      style: AppTextStyles.textBold35,
                    ),
                    TextSpan(
                      text: 'Pokémons',
                      style: AppTextStyles.textSemiBold35,
                    ),
                  ],
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.02),
              Text(
                'Descubra todas as espécies de Pokémons',
                style: AppTextStyles.textRegular16,
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: 43,
                width: 226,
                child: CustomButtonWidget(
                  onTap: () {
                    Get.offNamed(Routes.HOME);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
