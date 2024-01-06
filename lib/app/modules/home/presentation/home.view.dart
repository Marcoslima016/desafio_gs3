import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home.imports.dart';

class HomeView extends StatefulWidget {
  const HomeView() : super(key: const Key(routeTag));

  static const routeTag = "home/";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageBackground(
        child: Column(
          children: [
            //-------- TOP BAR --------
            const HomeTopBar(),

            //-------- BANK CARDS --------
            const CardsHorizontalList(),

            //-- DIVISOR --
            divider(),

            //----- MENU 'FAVORITOS' -----
            const MyFavoritesMenu(),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return Container(
      width: 1.sw,
      height: 1.h,
      margin: EdgeInsets.only(
        left: 16.sp,
        right: 16.sp,
        top: 16.sp,
      ),
      color: Color(0xffE5E5E5B2).withOpacity(0.7),
    );
  }
}

class PageBackground extends StatelessWidget {
  final Widget child;

  const PageBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 1.sh,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.4512],
          colors: [
            Color(0xff3C6AB2),
            Colors.white,
          ],
        ),
      ),
      child: child,
    );
  }
}
