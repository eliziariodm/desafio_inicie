import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/ui/app_colors.dart';
import '../../../core/ui/app_text_styles.dart';
import '../home_controller.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return LayoutBuilder(
      builder: (context, constraints) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.4,
              width: constraints.maxWidth,
              child: Container(
                color: AppColors.backgroundSearch,
                padding: const EdgeInsets.all(8),
              ),
            ),
            const Divider(color: AppColors.primary),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: const Icon(
                  Icons.share,
                  color: AppColors.gray,
                ),
                title: Text(
                  'Compartilhar Aplicativo',
                  style: AppTextStyles.textRegular16,
                ),
                onTap: homeController.shareApp as void Function()?,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
