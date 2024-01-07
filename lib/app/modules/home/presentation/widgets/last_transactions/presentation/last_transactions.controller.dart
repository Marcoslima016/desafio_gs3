class Transaction {
  final String title;
  final String dateTimeTextRFC;
  final double amount;
  final int installmentAmount;
  final TransactionMarketType marketType;
  final bool warn;

  DateTime get dateTimeParse => DateTime.parse(dateTimeTextRFC);

  String get dateTimeDisplay {
    String day = dateTimeParse.day.toString();
    if (day.length < 2) day = "0$day";
    String month = dateTimeParse.month.toString();
    if (month.length < 2) month = "0$month";
    String hour = dateTimeParse.hour.toString();
    if (hour.length < 2) hour = "0$hour";
    String minute = dateTimeParse.minute.toString();
    if (minute.length < 2) minute = "0$minute";
    return '$day/$month às $hour:$minute';
  }

  Transaction({
    required this.title,
    required this.dateTimeTextRFC,
    required this.amount,
    required this.installmentAmount,
    required this.marketType,
    this.warn = false,
  });
}

enum TransactionMarketType {
  transport,
  virtual,
  superMarket,
}

class LastTransactionsController {
  List<Transaction> transactionsList = [
    Transaction(
      title: "Apple",
      dateTimeTextRFC: "2023-09-05 22:35:00",
      amount: 545.99,
      installmentAmount: 12,
      marketType: TransactionMarketType.virtual,
    ),
    Transaction(
      title: "Uber*Uber*Trip",
      dateTimeTextRFC: "2023-09-05 15:25:00",
      amount: 12.61,
      installmentAmount: 0,
      marketType: TransactionMarketType.transport,
      warn: true,
    ),
    Transaction(
      title: "Carrefour",
      dateTimeTextRFC: "2023-09-03 09:34:00",
      amount: 349,
      installmentAmount: 3,
      marketType: TransactionMarketType.superMarket,
    ),
    Transaction(
      title: "Carrefour",
      dateTimeTextRFC: "2023-09-03 20:00:00",
      amount: 100,
      installmentAmount: 1,
      marketType: TransactionMarketType.superMarket,
    ),
  ];
}
