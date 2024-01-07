import 'package:intl/intl.dart';

class Formatter {
  static String moneyFormat(double value, {bool includePrefixText = true}) {
    final mask = NumberFormat("###,##0.00", "pt-BR");
    return mask.format(value);
  }
}
