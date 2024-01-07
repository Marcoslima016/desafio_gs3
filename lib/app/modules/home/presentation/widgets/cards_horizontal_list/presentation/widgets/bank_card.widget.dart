import 'package:desafio_gs3/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    super.key,
    required this.index,
  });

  final int index;

  static const List<List<Color>> grandientColorsVariations = [
    [Color(0xff2B66BC), Color(0xff132D55)],
    [Color.fromARGB(255, 1, 89, 91), Color(0xff005153)],
  ];

  static const List<Color> dividerColorsVariations = [
    Color(0xff3660A1),
    Color.fromARGB(255, 3, 95, 97),
  ];

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
            grandientColorsVariations[index][0],
            grandientColorsVariations[index][1],
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
                    children: [
                      AText.bodyMedium(
                        "**** 1234",
                      ),
                      Opacity(
                        opacity: 0.76,
                        child: AText.bodyMedium(
                          "GS3 TEC",
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(),
                ),

                //--------- BOTAO VER MAIS ---------

                SvgPicture.asset(
                  "assets/icons/Eye.svg",
                  color: AppTheme.colors.secondary,
                  width: 18.w,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),

          //--------- DIVIDER ---------

          Container(
            width: 1.sw,
            height: 1.h,
            margin: EdgeInsets.only(top: 15.h),
            color: dividerColorsVariations[index],
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
                    AText.bodyLarge(
                      "R\$ 7.867,80",
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
                      "20",
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
