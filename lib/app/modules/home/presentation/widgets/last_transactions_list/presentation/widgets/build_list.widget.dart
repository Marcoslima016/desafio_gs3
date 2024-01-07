import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation.imports.dart';
import 'card_transaction.wiget.dart';
import 'widgets.imports.dart';

class BuildList extends StatefulWidget {
  const BuildList({
    super.key,
    required this.controller,
  });

  final LastTransactionsListController controller;

  @override
  State<BuildList> createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  late final LastTransactionsListController controller;

  @override
  void initState() {
    controller = widget.controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 10.h),
      // padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
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

                          // index == 0 ? SizedBox(height: 10.h) : Container(),

                          //------------- DATE DIVIDER -------------

                          // DateDivider(
                          //   item: controller.transactionsList[index],
                          //   transactions: controller.transactionsList,
                          // ),

                          //--------------- LIST CARD --------------

                          //LINE DIVIDER
                          Container(
                            width: 1.sw,
                            height: 1.h,
                            margin: EdgeInsets.only(left: 18.w, right: 18.w),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(229, 229, 229, 0.70),
                            ),
                          ),

                          //CARD
                          CardTransaction(
                            transactionItem: controller.transactionsList[index],
                          ),

                          //ESPAÇAMENTO NO FINAL DA LISTA
                          (index + 1) == controller.transactionsList.length
                              ? SizedBox(
                                  height: 80.h,
                                )
                              : Container(),

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
