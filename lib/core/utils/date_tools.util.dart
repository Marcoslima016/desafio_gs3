class DateTools {
  //
  String presentationTextWeekDayNumberDayAndMonthText(DateTime dateTime) {
    String weekDayText = getWeekDayByIndex(dateTime.weekday);

    String dayText = dateTime.day.toString().length > 1 ? dateTime.day.toString() : "0" + dateTime.day.toString();

    String monthText = getMonthByIndex(dateTime.month);

    String result = weekDayText + ", " + dayText + " de " + monthText;

    return result;
  }

  String getWeekDayByIndex(int weekDayIndex) {
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

  String getMonthByIndex(int monthIndex) {
    if (monthIndex == 1) {
      return "Janeiro";
    } else if (monthIndex == 2) {
      return "Fevereiro";
    } else if (monthIndex == 3) {
      return "Março";
    } else if (monthIndex == 4) {
      return "Abril";
    } else if (monthIndex == 5) {
      return "Maio";
    } else if (monthIndex == 6) {
      return "Junho";
    } else if (monthIndex == 7) {
      return "Julho";
    } else if (monthIndex == 8) {
      return "Agosto";
    } else if (monthIndex == 9) {
      return "Setembro";
    } else if (monthIndex == 10) {
      return "Outubro";
    } else if (monthIndex == 11) {
      return "Novembro";
    } else if (monthIndex == 12) {
      return "Dezembro";
    }
    return "-";
  }
}
