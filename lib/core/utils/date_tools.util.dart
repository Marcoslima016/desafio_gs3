class DateTools {
  DateTools();

  String presentationTextWeekDayNumberDayAndMonthText(DateTime dateTime) {
    String weekDayText = _getWeekDayByIndex(dateTime.weekday);

    String dayText = dateTime.day.toString().length > 1 ? dateTime.day.toString() : "0" + dateTime.day.toString();

    String monthText = _getMonthByIndex(dateTime.month);

    String result = weekDayText + ", " + dayText + " " + monthText;

    return result;
  }

  String _getWeekDayByIndex(int weekDayIndex) {
    if (weekDayIndex == 1) {
      return "Segunda-Feira";
    } else if (weekDayIndex == 2) {
      return "Terça-Feira";
    } else if (weekDayIndex == 3) {
      return "Quarta-Feira";
    } else if (weekDayIndex == 4) {
      return "Quinta-Feira";
    } else if (weekDayIndex == 5) {
      return "Sexta-Feira";
    } else if (weekDayIndex == 6) {
      return "Sábado";
    } else if (weekDayIndex == 7) {
      return "Domingo";
    }
    return "-";
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
}
