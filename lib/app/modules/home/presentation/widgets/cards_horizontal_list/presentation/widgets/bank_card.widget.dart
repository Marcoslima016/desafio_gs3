import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BankCard extends StatefulWidget {
  const BankCard({
    super.key,
    required this.index,
    required this.cardItem,
  });

  final int index;

  final BankCardDetails cardItem;

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  late int index;

  late BankCardDetails cardItem;

  static const List<List<Color>> grandientColorsVariations = [
    [Color(0xff2B66BC), Color(0xff132D55)],
    [Color.fromARGB(255, 1, 89, 91), Color(0xff005153)],
  ];

  static const List<Color> dividerColorsVariations = [
    Color(0xff3660A1),
    Color.fromARGB(255, 3, 95, 97),
  ];

  bool hidden = false;

  _onTapVisibilityButton() {
    setState(() {
      hidden = !hidden;
    });
  }

  @override
  void initState() {
    index = widget.index;
    cardItem = widget.cardItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      margin: EdgeInsets.only(right: 15.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0, 0.99],
          colors: [
            grandientColorsVariations[widget.index][0],
            grandientColorsVariations[widget.index][1],
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.sp,
              top: 13.sp,
              right: 13.sp,
            ),
            child: Row(
              children: [
                //--------- IMAGEM ---------

                Container(
                  width: 88.sp,
                  height: 56.sp,
                  decoration: const BoxDecoration(
                    color: Color(0xffD9D9D9),
                  ),
                ),

                //---------- DADOS ---------

                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- NUMERO --
                      CardNumberDisplay(
                        cardNumber: widget.cardItem.cardNumber,
                      ),

                      //-- NOME --
                      Opacity(
                        opacity: 0.76,
                        child: AText.bodyMedium(
                          widget.cardItem.name,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(),
                ),

                //----- BOTAO MOSTRAR/ESCONDER -----

                InkWell(
                  onTap: () {
                    _onTapVisibilityButton();
                  },
                  child: hidden
                      ? Icon(
                          Icons.visibility_off,
                          size: 18.w,
                          color: AppTheme.colors.secondary,
                        )
                      : SvgPicture.asset(
                          "assets/icons/Eye.svg",
                          color: AppTheme.colors.secondary,
                          width: 18.w,
                          fit: BoxFit.fitWidth,
                        ),
                ),
              ],
            ),
          ),

          //--------- DIVIDER ---------

          Container(
            width: 1.sw,
            height: 1.h,
            margin: EdgeInsets.only(top: 15.h),
            color: dividerColorsVariations[widget.index],
          ),

          //
          Padding(
            padding: EdgeInsets.only(
              top: 6.5.sp,
              left: 13.sp,
              right: 13.sp,
              bottom: 13.sp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                //------ LIMITE DISPONIVEL ------

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 13.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Opacity(
                            opacity: 0.76,
                            child: AText.labelSmall(
                              "Limite disponível",
                              lineHeight: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    hidden
                        ? Container(
                            height: 19.5.sp,
                            margin: EdgeInsets.only(left: 1.sp),
                            child: const HiddenMask(),
                          )
                        : AText.bodyLarge(
                            "R\$ ${Formatter.moneyFormat(widget.cardItem.limit)}",
                            lineHeight: 1.25,
                          ),
                  ],
                ),

                //------ MELHOR DATA DE COMPRA ------

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 13.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Opacity(
                            opacity: 0.76,
                            child: AText.labelSmall(
                              "Melhor data de compra",
                              lineHeight: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    AText.bodyLarge(
                      widget.cardItem.bestDayToBuy.toString(),
                      lineHeight: 1.25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardNumberDisplay extends StatelessWidget {
  const CardNumberDisplay({
    super.key,
    required this.cardNumber,
  });

  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    String partOfCardNumber = cardNumber.split(" ")[1];

    return SizedBox(
      height: 21.sp,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HiddenMask(),
          SizedBox(width: 6.12.w),
          SizedBox(
            height: 21.sp,
            child: Center(
              child: AText.bodyMedium(
                partOfCardNumber,
                lineHeight: 1.25,
                align: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HiddenMask extends StatelessWidget {
  const HiddenMask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.59.w,
      height: 21.sp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _circle(),
          _circle(),
          _circle(),
          _circle(),
        ],
      ),
    );
  }

  Widget _circle() {
    return Center(
      child: Container(
        width: 6.25.sp,
        height: 6.25.sp,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
