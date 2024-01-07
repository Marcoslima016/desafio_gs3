import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation.imports.dart';
import 'card_transaction.wiget.dart';
import 'widgets.imports.dart';

class BuildList extends StatefulWidget {
  const BuildList({super.key});

  @override
  State<BuildList> createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  late final LastTransactionsListController controller;

  @override
  void initState() {
    controller = LastTransactionsListController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      // padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: controller.transactionsList.isNotEmpty
                ? ListView.builder(
                    key: Key("wallet_extract_list"),
                    itemCount: controller.transactionsList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //

                          index == 0 ? SizedBox(height: 2.2.h) : Container(),

                          //------------- DATE DIVIDER -------------

                          // DateDivider(
                          //   item: controller.transactionsList[index],
                          //   transactions: controller.transactionsList,
                          // ),

                          //--------------- LIST CARD --------------

                          const CardTransaction(),

                          //----- LOADING MORE ITEMS ------

                          // index == transactions.length - 1 && widget.loadingMoreItems
                          //     ? Container(
                          //         width: 1.sw,
                          //         child: Center(
                          //           child: Container(
                          //             width: 28.sp,
                          //             height: 28.sp,
                          //             margin: EdgeInsets.symmetric(vertical: 24.sp),
                          //             child: CircularProgressIndicator(
                          //               backgroundColor: Colors.white.withOpacity(0.1),
                          //               valueColor: AlwaysStoppedAnimation<Color>(Style().colors.primary.withOpacity(0.8)),
                          //             ),
                          //           ),
                          //         ),
                          //       )
                          //     : Container(),
                        ],
                      );
                    },
                  )
                : Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50.h),
                      child: Text(
                        "Nenhuma transação realizada.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 200, 200, 200),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
