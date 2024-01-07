import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardTransaction extends StatefulWidget {
  const CardTransaction({super.key});

  @override
  State<CardTransaction> createState() => _CardTransactionState();
}

class _CardTransactionState extends State<CardTransaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      child: Text("Transaction!"),
    );
  }
}
