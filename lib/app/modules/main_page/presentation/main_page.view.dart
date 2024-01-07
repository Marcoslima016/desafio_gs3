import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPageView extends StatefulWidget {
  const MainPageView() : super(key: const Key(routeTag));

  static const routeTag = "main_page/";

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final List<Widget> tabs = [
    const HomeView(),
    Container(width: 1.sw, height: 1.sh, color: Colors.grey[300]),
    Container(width: 1.sw, height: 1.sh, color: Colors.grey[300]),
    Container(width: 1.sw, height: 1.sh, color: Colors.grey[300]),
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
