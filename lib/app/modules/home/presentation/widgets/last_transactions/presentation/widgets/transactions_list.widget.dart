import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../presentation.imports.dart';
import 'widgets.imports.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({
    super.key,
    required this.controller,
  });

  final LastTransactionsController controller;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  late final LastTransactionsController controller;

  @override
  void initState() {
    controller = widget.controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 10.sp),
      child: controller.transactionsList.isNotEmpty
          ? ListView.builder(
              key: const Key("wallet_extract_list"),
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

                    CardTransaction(
                      transactionItem: controller.transactionsList[index],
                    ),

                    //ESPAÇAMENTO NO FINAL DA LISTA
                    endMargin(index),
                  ],
                );
              },
            )
          //--------------- LISTA VAZIA --------------
          : Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 50.h),
                child: Text(
                  "Nenhuma transação realizada.",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 200, 200, 200),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
    );
  }

  Widget endMargin(int index) {
    if (index + 1 >= controller.transactionsList.length) {
      return SizedBox(height: 20.h);
    } else {
      return Container();
    }
  }
}
