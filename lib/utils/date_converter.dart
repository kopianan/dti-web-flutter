import 'package:intl/intl.dart';

class DateConverter {
  static String convertDateDefault(String? date) {
    if (date == null) {
      return '';
    } else {
      try {
        final format = DateFormat('dd MMM yyyy');
        final newDate = DateTime.parse(date);
        return format.format(newDate);
      } on Exception catch (e) {
        return date;
      }
    }
  }

  static String convertDateDefault2(DateTime? date) {
    if (date == null) {
      return '';
    } else {
      final format = DateFormat('dd MMM yyyy');

      return format.format(date);
    }
  }

  //VALUE IS DATE NOW
  static DateTime stringToDate(String? stringDate) {
    if (stringDate == null) {
      return DateTime.now();
    } else {
      final format = DateFormat('dd MMM yyyy');
      return format.parse(stringDate);
    }
  }
}
