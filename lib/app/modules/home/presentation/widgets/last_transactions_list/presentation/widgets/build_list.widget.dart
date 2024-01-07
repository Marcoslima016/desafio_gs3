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
                    //------------- DATE DIVIDER -------------

                    DateDivider(
                      item: controller.transactionsList[index],
                      transactions: controller.transactionsList,
                    ),

                    //--------------- LIST CARD --------------

                    //CARD
                    CardTransaction(
                      transactionItem: controller.transactionsList[index],
                    ),

                    //ESPAÇAMENTO NO FINAL DA LISTA
                    endMargin(index),
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
    );
  }

  Widget endMargin(int index) {
    var t = index + 1;
    if (index + 1 >= controller.transactionsList.length) {
      return SizedBox(height: 20.h);
    } else {
      return Container();
    }
  }
}
