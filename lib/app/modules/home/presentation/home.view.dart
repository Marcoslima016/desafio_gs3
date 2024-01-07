import 'package:flutter/material.dart';
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
    return PageBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //-------------- TOP BAR ---------------

          const HomeTopBar(),

          //------------- BANK CARDS -------------

          const CardsHorizontalList(),

          //- DIVISOR -
          divider(
            const Color.fromARGB(255, 235, 235, 235).withOpacity(0.7),
            16.sp,
          ),

          //------- MENU 'MEUS FAVORITOS' --------

          const MyFavoritesMenu(),

          //- DIVISOR -
          divider(
            const Color.fromRGBO(229, 229, 229, 0.70),
            20.sp,
          ),

          //--------- ULTIMOS LANÇAMENTOS ---------

          const Expanded(
            child: LastTransactions(),
          ),
        ],
      ),
    );
  }

  Widget divider(Color color, double marginTop) {
    return Container(
      width: 1.sw,
      height: 1.h,
      margin: EdgeInsets.only(
        left: 16.sp,
        right: 16.sp,
        top: marginTop,
      ),
      color: color,
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
