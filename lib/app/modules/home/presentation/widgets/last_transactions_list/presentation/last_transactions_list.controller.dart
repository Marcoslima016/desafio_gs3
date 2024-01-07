class Transaction {
  final String title;
  final String dateTimeTextRFC;
  final double amount;
  final int installmentAmount;
  final TransactionMarketType marketType;

  DateTime get dateTimeParse => DateTime.parse(dateTimeTextRFC);

  Transaction({
    required this.title,
    required this.dateTimeTextRFC,
    required this.amount,
    required this.installmentAmount,
    required this.marketType,
  });
}

enum TransactionMarketType {
  transport,
  virtual,
  superMarket,
}

class LastTransactionsListController {
  List<Transaction> transactionsList = [
    Transaction(
      title: "Apple",
      dateTimeTextRFC: "2022-09-05 22:35:00",
      amount: 545.99,
      installmentAmount: 12,
      marketType: TransactionMarketType.virtual,
    ),
    Transaction(
      title: "Apple",
      dateTimeTextRFC: "2022-09-05 22:35:00",
      amount: 545.99,
      installmentAmount: 12,
      marketType: TransactionMarketType.virtual,
    ),
    Transaction(
      title: "Apple",
      dateTimeTextRFC: "2022-09-05 22:35:00",
      amount: 545.99,
      installmentAmount: 12,
      marketType: TransactionMarketType.virtual,
    ),
  ];
}
