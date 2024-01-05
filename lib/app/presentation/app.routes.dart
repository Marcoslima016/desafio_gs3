import 'package:flutter/material.dart';

class AppRoutes {
  //

  @override
  List<Widget> pages = [
    //
  ];

  /// Gera a rota referente a uma chamada feita
  @override
  Route generateRoute(RouteSettings settings) {
    final screen = _getScreen(settings);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => screen,
    );
  }

  // Recupera a tela de uma rota
  Widget _getScreen(RouteSettings settings) {
    for (Widget page in pages) {
      if (settings.name == page.key.toString()) {
        return page;
      }
    }
    return Container();
  }
}
