import 'package:desafio_gs3/lib.imports.dart';

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
      dateTimeTextRFC: "2023-09-02 20:00:00",
      amount: 100,
      installmentAmount: 1,
      marketType: TransactionMarketType.superMarket,
    ),
  ];
}
