import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PageUnderDevelopment extends StatelessWidget {
  const PageUnderDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 1.sh,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 0.35.sw,
            height: 0.35.sw,
            child: Opacity(
              opacity: 0.03,
              child: Image.asset(
                'assets/brand/icon.png',
              ),
            ),
          ),
          SizedBox(height: 50.h),
          Text(
            "Em desenvolvimento",
            style: GoogleFonts.roboto(
              // color: Color.fromARGB(255, 233, 232, 232),
              color: AppTheme.colors.primary.withOpacity(0.2),
              fontSize: 20.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
