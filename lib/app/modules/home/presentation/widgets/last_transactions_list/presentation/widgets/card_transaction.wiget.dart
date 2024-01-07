import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardTransaction extends StatefulWidget {
  const CardTransaction({
    super.key,
    required this.transactionItem,
  });

  final Transaction transactionItem;

  @override
  State<CardTransaction> createState() => _CardTransactionState();
}

class _CardTransactionState extends State<CardTransaction> {
  late Transaction transactionItem;
  @override
  Widget build(BuildContext context) {
    transactionItem = widget.transactionItem;

    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(
        bottom: 13.53.sp,
        top: 13.53.sp,
        right: 24.sp,
        left: 24.sp,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          //ICONE / TITULO / DATAHORA
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //--------------- ICONE ---------------
              PrimaryCard(
                child: SizedBox(
                  width: 45.7.sp,
                  height: 45.7.sp,
                  child: Center(
                    child: buildIcon(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 15.22.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //--------------- TITULO ---------------

                    AText.headingSmall(
                      widget.transactionItem.title,
                      lineHeight: 1.66,
                    ),

                    SizedBox(height: 4.h),

                    //--------------- DATA / HR ---------------

                    AText.bodySmall(
                      transactionItem.dateTimeTextRFC,
                      color: Color(0xff69696B),
                      lineHeight: 1.6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          //

          //VALOR/PARCELAMENTO
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //--------------- VALOR ---------------

              AText.headingSmall(
                widget.transactionItem.amount.toString(),
                lineHeight: 1.66,
              ),

              SizedBox(height: 4.h),

              //------------ PARCELAMENTO ------------

              buildInstallmentDisplay(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildInstallmentDisplay() {
    if (transactionItem.installmentAmount > 0) {
      return AText.bodySmall(
        'em ' + transactionItem.installmentAmount.toString() + 'x',
        color: Color(0xff69696B),
        lineHeight: 1.6,
      );
    } else {
      return Container();
    }
  }

  Widget buildIcon() {
    return SvgPicture.asset(
      "assets/icons/Mail.svg",
      color: AppTheme.colors.primary,
      height: 22.sp,
      // fit: BoxFit.fill,
    );
  }
}
