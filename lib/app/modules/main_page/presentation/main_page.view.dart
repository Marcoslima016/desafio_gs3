import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main_page.imports.dart';

class MainPageView extends StatefulWidget {
  const MainPageView() : super(key: const Key(routeTag));

  static const routeTag = "main_page/";

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final List<Widget> tabs = [
    const HomeView(),
    Container(),
    Container(),
    Container(),
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
