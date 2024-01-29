import 'package:intl/intl.dart';

class AppCurrencyFormat {
  static String formatMoneyDot(num value, {bool isDecimal = false}) {
    if (isDecimal)
      return NumberFormat('###,###,###.##', 'en_us')
          .format(value)
          .replaceAll(RegExp('[,]'), '.');

    return NumberFormat('###,###,###', 'en_us').format(value);
  }

  static String formatMoneyD(num value) {
    final money = '${formatMoneyDot(value)} đ';
    return money;
  }
}