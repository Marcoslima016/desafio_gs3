import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFavoritesMenu extends StatefulWidget {
  const MyFavoritesMenu({super.key});

  @override
  State<MyFavoritesMenu> createState() => _MyFavoritesMenuState();
}

class _MyFavoritesMenuState extends State<MyFavoritesMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(
        top: 22.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          //---------------------

          Padding(
            padding: EdgeInsets.only(left: 22.w, right: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AText.headingMedium(
                  "Meus favoritos",
                ),
                Row(
                  children: [
                    AText.labelSmall(
                      "Personalizar",
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(width: 3.sp),
                    SvgPicture.asset(
                      "assets/icons/Grid Four 2.svg",
                      color: AppTheme.colors.secondary,
                      width: 18.sp,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //---------------------

          Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16.sp),
                  //
                  MenuButton(
                    title: "Cartão Virtual",
                    icon: SvgPicture.asset(
                      "assets/icons/light/gym.svg",
                      color: AppTheme.colors.primary,
                      width: 30.sp,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  //
                  MenuButton(
                    title: "Cartão adicional",
                    icon: SvgPicture.asset(
                      "assets/icons/light/Bank Card Add ou-lc.svg",
                      color: AppTheme.colors.primary,
                      width: 30.sp,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  //
                  MenuButton(
                    title: "Seguros",
                    icon: SvgPicture.asset(
                      "assets/icons/mingcute_safe-shield-2-fill.svg",
                      color: AppTheme.colors.primary,
                      width: 30.sp,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  //
                  MenuButton(
                    title: "Pacote SMS",
                    icon: SvgPicture.asset(
                      "assets/icons/Mail.svg",
                      color: AppTheme.colors.primary,
                      // width: 30.sp,
                      height: 30.sp,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  //
                  MenuButton(
                    title: "Sala VIP",
                    icon: Icon(
                      Icons.star_border,
                      size: 30.sp,
                      color: AppTheme.colors.primary,
                    ),
                  ),
                  //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.sp),
      child: SizedBox(
        width: 91.sp,
        child: Column(
          children: [
            PrimaryCard(
              child: SizedBox(
                width: 66.sp,
                height: 66.sp,
                child: Center(
                  child: icon,
                ),
              ),
            ),
            SizedBox(height: 6.h),
            AText.bodySmall(title)
          ],
        ),
      ),
    );
  }
}
