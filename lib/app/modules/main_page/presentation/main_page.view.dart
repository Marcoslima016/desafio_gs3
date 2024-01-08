import 'package:flutter/material.dart';
import '../../../../lib.imports.dart';

class MainPageView extends StatefulWidget {
  const MainPageView() : super(key: const Key(routeTag));

  static const routeTag = "main_page/";

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final List<Widget> tabs = [
    const HomeView(),
    const PageUnderDevelopment(),
    const PageUnderDevelopment(),
    const PageUnderDevelopment(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: IndexedStack(
        index: currentIndex,
        children: tabs,
      ),
      bottomNavigationBar: AppBottomBar(
        onChangeIndex: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
