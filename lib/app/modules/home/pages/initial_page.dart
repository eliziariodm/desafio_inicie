import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_images.dart';
import '../../../core/ui/app_text_styles.dart';
import '../../../core/widgets/custom_category_button_widget.dart';
import '../../details/details_page.dart';
import '../widgets/custom_pokemon_container_widget.dart';
import '../widgets/custom_search_button_widget.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        padding: const EdgeInsets.fromLTRB(20, 20, 2, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 20, 14, 10),
                child: Text(
                  'Tipo',
                  style: AppTextStyles.textBold16,
                ),
              ),
              SizedBox(
                height: 28,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 10),
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return const CustomCategoryButtonWidget();
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 34, 14, 10),
                child: Text(
                  'Mais procurados',
                  style: AppTextStyles.textBold16,
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.fromLTRB(10, 0, 20, 11),
                shrinkWrap: true,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 15,
                  childAspectRatio: 2 / 1.5,
                ),
                itemBuilder: ((context, index) {
                  return CustomPokemonContainerWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsPage()));
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
