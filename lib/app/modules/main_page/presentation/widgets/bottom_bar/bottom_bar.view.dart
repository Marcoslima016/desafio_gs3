import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    super.key,
    required this.onChangeIndex,
  });

  final Function(int index) onChangeIndex;

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int currentIndex = 0;

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    widget.onChangeIndex(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.sp,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.sp),
          topRight: Radius.circular(35.sp),
        ),
        boxShadow: [
          const BoxShadow(
            color: Color.fromRGBO(229, 229, 229, 0.4),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1.8,
            blurRadius: 2.5,
            offset: Offset(0, 7.5.sp),
          ),
        ],
      ),
      padding: EdgeInsets.only(
        top: 16.sp,
        left: 16.sp,
        right: 16.sp,
        bottom: 10.sp,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomBarButton(
            iconPath: "assets/icons/Home.svg",
            title: "Home",
            selected: currentIndex == 0 ? true : false,
            onTap: () {
              onTap(0);
            },
          ),
          BottomBarButton(
            iconPath: "assets/icons/File Text 2.svg",
            title: "Fatura",
            selected: currentIndex == 1 ? true : false,
            onTap: () {
              onTap(1);
            },
          ),
          BottomBarButton(
            iconPath: "assets/icons/Bank Card.svg",
            title: "Cartão",
            selected: currentIndex == 2 ? true : false,
            onTap: () {
              onTap(2);
            },
          ),
          BottomBarButton(
            iconPath: "assets/icons/Group 530263.svg",
            title: "Shop",
            selected: currentIndex == 3 ? true : false,
            onTap: () {
              onTap(3);
            },
          ),
        ],
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool selected;

  final defaultColor = const Color(0xffB4B4B8);

  final Function() onTap;

  const BottomBarButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              color: selected ? AppTheme.colors.primary : defaultColor,
              height: 27.sp,
              fit: BoxFit.none,
            ),
            AText.labelRegularBold(
              title,
              color: selected ? AppTheme.colors.secondary : defaultColor,
            ),
          ],
        ),
      ),
    );
  }
}
