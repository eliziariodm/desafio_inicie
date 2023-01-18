import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

  GlobalKey scaffoldKey = GlobalKey();

  Function get shareApp => _shareApp;

  onItemTapped(int index) {
    selectedIndex.value = index;
  }

  _shareApp() async {
    await Share.share('Compartilhando o app Pokedex');
  }
}
