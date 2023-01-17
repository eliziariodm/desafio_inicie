import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_images.dart';
import '../../../core/ui/app_text_styles.dart';
import '../widgets/custom_search_button_widget.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 172,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                decoration: const BoxDecoration(
                  color: AppColors.backgroundSearch,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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
                              'Pokedéx',
                              style: AppTextStyles.textBold18,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Text(
                              'Todas as espécies de pokemons estão esperando por você!',
                              style: AppTextStyles.textRegular16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Flexible(
                            flex: 1,
                            child: CustomSearchButtonWidget(),
                          )
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
            ],
          ),
        ),
      ),
    );
  }
}
