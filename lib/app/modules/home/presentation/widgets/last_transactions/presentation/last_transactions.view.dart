import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:desafio_gs3/app/app.imports.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/transactions_list.widget.dart';

class LastTransactions extends StatefulWidget {
  const LastTransactions({super.key});

  @override
  State<LastTransactions> createState() => _LastTransactionsState();
}

class _LastTransactionsState extends State<LastTransactions> {
  late final LastTransactionsController controller;

  @override
  void initState() {
    controller = LastTransactionsController();
    super.initState();
  }

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
          //---------------
          Padding(
            padding: EdgeInsets.only(left: 22.w, right: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AText.headingMedium(
                  "Últimos lançamentos",
                  lineHeight: 1.42,
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

          //-------------
          Expanded(
            child: TransactionsList(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
