import 'package:intl/intl.dart';

class DateConverter {
  static String convertDateDefault(String? date) {
    if (date == null) {
      return '';
    } else {
      try {
        final format = DateFormat('MM/dd/yyyy');
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
      final format = DateFormat('MM/dd/yyyy');

      return format.format(date);
    }
  }
}
