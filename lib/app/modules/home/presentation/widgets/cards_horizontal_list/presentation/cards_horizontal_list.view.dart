import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation.imports.dart';

class CardsHorizontalList extends StatefulWidget {
  const CardsHorizontalList({super.key});

  @override
  State<CardsHorizontalList> createState() => _CardsHorizontalListState();
}

class _CardsHorizontalListState extends State<CardsHorizontalList> {
  late final CardsHorizontalListController controller;

  @override
  void initState() {
    controller = CardsHorizontalListController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 13.sp),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(
            controller.cardsList.length,
            (index) {
              return Row(
                children: [
                  index == 0 ? SizedBox(width: 18.w) : Container(),
                  BankCard(
                    index: index,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
