import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/ui/app_colors.dart';
import '../../core/ui/app_images.dart';
import 'components/drawer_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        leadingWidth: 75,
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.background,
        title: SvgPicture.asset(
          AppImages.logo,
          height: 50,
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
    );
  }
}
