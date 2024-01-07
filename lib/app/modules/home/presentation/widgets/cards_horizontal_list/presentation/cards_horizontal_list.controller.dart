class CardsHorizontalListController {
  List<BankCardDetails> cardsList = [
    BankCardDetails(
      cardNumber: "12345 5621",
      name: "GS3 TEC",
      limit: 7867.80,
      bestDayToBuy: 20,
    ),
    BankCardDetails(
      cardNumber: "12345 1526",
      name: "GS3 TEC 2",
      limit: 100.50,
      bestDayToBuy: 5,
    ),
  ];
}

class BankCardDetails {
  final String cardNumber;
  final String name;
  final double limit;
  final int bestDayToBuy;

  BankCardDetails({
    required this.cardNumber,
    required this.name,
    required this.limit,
    required this.bestDayToBuy,
  });
}
