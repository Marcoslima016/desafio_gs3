import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //
  static List<Widget> pages = [
    const HomeView(),
    const MainPageView(),
  ];

  Route generateRoute(RouteSettings settings) {
    final screen = _getScreen(settings);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => screen,
    );
  }

  Widget _getScreen(RouteSettings settings) {
    for (Widget page in pages) {
      var t = page.key.toString();
      var t2 = Key(settings.name!);
      if (Key(settings.name!) == page.key) {
        return page;
      }
    }
    return Container();
  }
}
