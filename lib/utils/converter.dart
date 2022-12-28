import 'package:intl/intl.dart';

class Converter {
  static String convertStringToIDR(double price) {
    final format = NumberFormat("#,###,###");
    return format.format(price);
  }
}
