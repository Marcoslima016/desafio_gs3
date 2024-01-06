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
          children: const [
            HomeTopBar(),
          ],
        ),
      ),
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
