import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(
        top: 50.h,
      ),
      padding: EdgeInsets.only(
        left: 18.w,
        right: 18.w,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 1.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //--------- BOTAO MENU --------

                SvgPicture.asset(
                  "assets/icons/Group 530128.svg",
                  color: Colors.white,
                  width: 18.75.sp,
                  fit: BoxFit.fitWidth,
                ),

                //--------- TITULO --------

                Row(
                  children: [
                    Text(
                      "Olá, ",
                      style: GoogleFonts.mulish(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Cliente",
                      style: GoogleFonts.mulish(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                //----- BOTOES CHAT/NOTIFICACOES ----

                Row(
                  children: [
                    //--- CHAT ---
                    SvgPicture.asset(
                      "assets/icons/chat2.svg",
                      color: Colors.white,
                      width: 21.sp,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(width: 8.w),

                    //--- NOT ---
                    Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Shape.svg",
                          color: Colors.white,
                          width: 15.sp,
                          fit: BoxFit.fitWidth,
                        ),
                        //BADGE CONTADOR
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 12.sp,
                            height: 12.sp,
                            decoration: BoxDecoration(
                              color: Color(0xff2890CF),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.sp,
                              ),
                              shape: BoxShape.circle,
                            ),
                            transform: Matrix4.translationValues(5.sp, -4.5.sp, 0),
                            child: Center(
                              child: Text(
                                "3",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1,
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //--------- DIVIDER ---------

          Container(
            width: 1.sw,
            height: 1.h,
            margin: EdgeInsets.only(
              top: 10.h,
            ),
            color: const Color.fromRGBO(229, 229, 229, 0.70),
          ),
        ],
      ),
    );
  }
}
