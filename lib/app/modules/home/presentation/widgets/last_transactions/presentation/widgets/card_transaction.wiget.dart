import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
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
              Stack(
                children: [
                  //--------------- ICONE ---------------
                  PrimaryCard(
                    child: SizedBox(
                      width: 45.7.sp,
                      height: 45.7.sp,
                      child: Center(
                        child: _buildIcon(),
                      ),
                    ),
                  ),

                  //--- BADGE WARNING----
                  _buildBadgeWarning(),
                ],
              ),

              //
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
                      transactionItem.dateTimeDisplay,
                      color: const Color(0xff69696B),
                      lineHeight: 1.6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          //

          //VALOR / PARCELAMENTO
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //--------------- VALOR ---------------

              AText.headingSmall(
                "R\$${Formatter.moneyFormat(widget.transactionItem.amount)}",
                lineHeight: 1.66,
              ),

              SizedBox(height: 4.h),

              //------------ PARCELAMENTO ------------

              _buildInstallmentDisplay(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBadgeWarning() {
    if (transactionItem.warn) {
      return Positioned(
        right: 0,
        top: 0,
        child: Container(
          width: 13.sp,
          height: 13.sp,
          decoration: BoxDecoration(
            color: const Color(0xffFFAC31),
            border: Border.all(
              color: const Color(0xffFF9901),
              width: 2.sp,
            ),
            shape: BoxShape.circle,
          ),
          transform: Matrix4.translationValues(2.sp, -2.sp, 0),
          child: Center(
            child: Text(
              "!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                height: 1.1,
                fontSize: 8.5.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _buildInstallmentDisplay() {
    if (transactionItem.installmentAmount > 0) {
      return AText.bodySmall(
        'em ${transactionItem.installmentAmount.toString()} x',
        color: const Color(0xff69696B),
        lineHeight: 1.6,
        fontWeight: FontWeight.w700,
      );
    } else {
      return Container();
    }
  }

  Widget _buildIcon() {
    String iconPath = 'assets/icons/light/sr-cart-trolley-v2.svg';

    if (transactionItem.marketType == TransactionMarketType.superMarket) {
      iconPath = 'assets/icons/light/sr-cart-trolley-v2.svg';
    } else if (transactionItem.marketType == TransactionMarketType.transport) {
      iconPath = 'assets/icons/light/shopping.svg';
    } else if (transactionItem.marketType == TransactionMarketType.virtual) {
      iconPath = 'assets/icons/Mobile 01.svg';
    }
    return SvgPicture.asset(
      iconPath,
      color: AppTheme.colors.primary,
      height: 24.sp,
      fit: BoxFit.none,
    );
  }
}
