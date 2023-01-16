import 'package:share_plus/share_plus.dart';

class HomeController {
  Function get shareApp => _shareApp;

  _shareApp() async {
    await Share.share('Compartilhando o app Pokedex');
  }
}
