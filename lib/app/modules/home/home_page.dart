import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/ui/app_colors.dart';
import '../../core/ui/app_icons.dart';
import '../../core/ui/app_images.dart';
import 'components/drawer_component.dart';
import 'pages/account_page.dart';
import 'pages/favorite_page.dart';
import 'pages/initial_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  RxInt initialPage = 0.obs;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initialPage.value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        leadingWidth: 75,
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.background,
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
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          initialPage.value = page;
        },
        children: const [
          InitialPage(),
          FavoritePage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.home,
                color:
                    initialPage.value == 0 ? AppColors.primary : AppColors.gray,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.favorite,
                color:
                    initialPage.value == 1 ? AppColors.primary : AppColors.gray,
              ),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.account,
                color:
                    initialPage.value == 2 ? AppColors.primary : AppColors.gray,
              ),
              label: 'Minha conta',
            )
          ],
          currentIndex: initialPage.value,
          onTap: (page) {
            _pageController?.animateToPage(
              page,
              duration: const Duration(milliseconds: 100),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }
//formas de persistir o bottomnavigation mas ainda com bugs
//  @override
//   Widget build(BuildContext context) {
//     final homeController = Get.find<HomeController>();

//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppIcons.home,
//               color: homeController.selectedIndex.value == 0
//                   ? AppColors.primary
//                   : AppColors.gray,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppIcons.favorite,
//               color: homeController.selectedIndex.value == 1
//                   ? AppColors.primary
//                   : AppColors.gray,
//             ),
//             label: 'Favoritos',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppIcons.account,
//               color: homeController.selectedIndex.value == 2
//                   ? AppColors.primary
//                   : AppColors.gray,
//             ),
//             label: 'Minha conta',
//           )
//         ],
//       ),
//       tabBuilder: (context, index) {
//         switch (index) {
//           case 0:
//             return CupertinoTabView(builder: (context) {
//               homeController.selectedIndex.value = 0;
//               return const CupertinoPageScaffold(
//                 child: InitialPage(),
//               );
//             });
//           case 1:
//             return CupertinoTabView(builder: (context) {
//               homeController.selectedIndex.value = 1;
//               return const CupertinoPageScaffold(
//                 child: FavoritePage(),
//               );
//             });
//           case 2:
//             return CupertinoTabView(builder: (context) {
//               homeController.selectedIndex.value = 2;
//               return const CupertinoPageScaffold(
//                 child: AccountPage(),
//               );
//             });
//           default:
//             return CupertinoTabView(builder: (context) {
//               homeController.selectedIndex.value = 0;
//               return const CupertinoPageScaffold(
//                 child: InitialPage(),
//               );
//             });
//         }
//       },
//     );
//   }
}
