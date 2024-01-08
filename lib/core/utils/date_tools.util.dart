class DateTools {
  DateTools();

  String presentationTextWeekDayNumberDayAndMonthText(DateTime dateTime) {
    String prefix = "";
    DateTime fakeToday = DateTime(2023, 09, 05);
    final daysfromNow = _daysBetween(fakeToday, dateTime);
    if (daysfromNow == 0) {
      prefix = "Hoje, ";
    } else if (daysfromNow == 1) {
      prefix = "Amanhã, ";
    }

    String dayText = dateTime.day.toString().length > 1 ? dateTime.day.toString() : "0${dateTime.day.toString()}";

    String monthText = _getMonthByIndex(dateTime.month);

    String result = '$prefix $dayText $monthText';

    return result;
  }

  String _getMonthByIndex(int monthIndex) {
    if (monthIndex == 1) {
      return "Jan";
    } else if (monthIndex == 2) {
      return "Fev";
    } else if (monthIndex == 3) {
      return "Mar";
    } else if (monthIndex == 4) {
      return "Abr";
    } else if (monthIndex == 5) {
      return "Mai";
    } else if (monthIndex == 6) {
      return "Jun";
    } else if (monthIndex == 7) {
      return "Jul";
    } else if (monthIndex == 8) {
      return "Ago";
    } else if (monthIndex == 9) {
      return "Set";
    } else if (monthIndex == 10) {
      return "Out";
    } else if (monthIndex == 11) {
      return "Nov";
    } else if (monthIndex == 12) {
      return "Dez";
    }
    return "-";
  }

  int _daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
}
