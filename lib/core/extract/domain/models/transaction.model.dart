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
