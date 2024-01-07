import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/build_list.widget.dart';

class LastTransactionsList extends StatefulWidget {
  const LastTransactionsList({super.key});

  @override
  State<LastTransactionsList> createState() => _LastTransactionsListState();
}

class _LastTransactionsListState extends State<LastTransactionsList> {
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
                AText.headingSmall(
                  "Últimos lançamentos",
                ),
                Row(
                  children: [
                    AText.labelSmall(
                      "Ver todos",
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(width: 9.sp),
                    SvgPicture.asset(
                      "assets/icons/arrow_right.svg",
                      color: AppTheme.colors.secondary,
                      height: 14.26.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //---------------------

          BuildList(),
        ],
      ),
    );
  }
}
