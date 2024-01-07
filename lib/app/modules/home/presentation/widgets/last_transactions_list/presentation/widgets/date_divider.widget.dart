import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation.imports.dart';

class DateDivider extends StatelessWidget {
  const DateDivider({
    super.key,
    required this.item,
    required this.transactions,
  });

  final Transaction item;
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    // final List<WalletTransaction> transactions = Get.find<List<WalletTransaction>>(tag: "extract-transactions-list");
    final int index = transactions.indexOf(item);

    bool insertDateDivider = false;

    DateTime? lastDividerDate;

    int indexItem = 0;

    List<String> dividersTexts = [];

    if (index == 0) {
      lastDividerDate = null;
      insertDateDivider = true;
      lastDividerDate = item.dateTimeParse;
    } else {
      lastDividerDate = transactions[index - 1].dateTimeParse;
      if (lastDividerDate.day != item.dateTimeParse.day) {
        insertDateDivider = true;
        int datesDif = lastDividerDate.difference(item.dateTimeParse).inDays;
        if (datesDif > 1) {
          //-- DEFINIR DIVISORES DE DATAS SEM DADOS --
          for (int i = 0; i < datesDif - 1; i++) {
            DateTime dateTimeOfDivider = lastDividerDate.subtract(Duration(days: i + 1));
            dividersTexts.add(
              DateTools().presentationTextWeekDayNumberDayAndMonthText(
                dateTimeOfDivider,
              ),
            );
          }
        }
      }
    }
    lastDividerDate = item.dateTimeParse;

    if (insertDateDivider) {
      dividersTexts.add(
        DateTools().presentationTextWeekDayNumberDayAndMonthText(
          item.dateTimeParse,
        ),
      );

      return ListView.builder(
        itemCount: dividersTexts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == (dividersTexts.length - 1)) {
            return DateDividerCard(
              dateText: dividersTexts[index],
            );
          } else {
            return EmptyDateDividerCard(
              dateText: dividersTexts[index],
            );
          }
        },
      );
    } else {
      return Container();
    }
  }
}

class EmptyDateDividerCard extends StatelessWidget {
  const EmptyDateDividerCard({
    super.key,
    required this.dateText,
  });

  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateDividerCard(
          dateText: dateText,
        ),
        SizedBox(
          width: 1.sw,
          height: 62.sp,
          child: Center(
            child: Text(
              "Nenhuma transação realizada nessa data.",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.46),
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DateDividerCard extends StatelessWidget {
  const DateDividerCard({
    super.key,
    required this.dateText,
  });

  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.h, bottom: 8.h),
          padding: EdgeInsets.only(
            top: 4.sp,
            bottom: 4.sp,
            left: 8.sp,
            right: 8.sp,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffEDE7F6),
            borderRadius: BorderRadius.all(
              Radius.circular(4.sp),
            ),
          ),
          child: Container(
            height: 19.h,
            child: Column(
              children: [
                SizedBox(height: 1.h),
                Text(
                  dateText,
                  style: GoogleFonts.roboto(
                    color: Color(0xff383938),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
