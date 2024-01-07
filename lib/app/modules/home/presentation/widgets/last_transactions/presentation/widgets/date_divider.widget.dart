import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final int index = transactions.indexOf(item);

    bool insertDateDivider = false;

    DateTime? lastDividerDate;

    int indexItem = index;

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
          //DEFINIR DIVISORES DE DATAS SEM DADOS
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                indexItem != 0
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 13.h),
                        child: lineDivider(),
                      )
                    : Container(),
                DateDividerCard(
                  dateText: dividersTexts[index],
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      );
    } else {
      return lineDivider();
    }
  }

  Widget lineDivider() {
    return Container(
      width: 1.sw,
      height: 1.h,
      margin: EdgeInsets.only(left: 18.w, right: 18.w),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229, 229, 229, 0.70),
      ),
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
          margin: EdgeInsets.only(left: 24.w),
          child: Text(
            dateText,
            style: GoogleFonts.mulish(
              color: AppTheme.colors.secondary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
