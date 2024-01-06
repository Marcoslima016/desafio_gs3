class CardsHorizontalListController {
  List<BankCardDetails> cardsList = [
    BankCardDetails(
      cardNumber: "111 222",
      name: "GS3 TEC",
      limit: 7867.80,
      bestDayToBuy: 20,
    ),
    BankCardDetails(
      cardNumber: "111 222",
      name: "GS3 TEC",
      limit: 7867.80,
      bestDayToBuy: 20,
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
