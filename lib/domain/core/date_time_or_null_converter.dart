

import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeOrNullConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeOrNullConverter();

  @override
  DateTime? fromJson(String? stringDate) {
    return stringDate == null ? null : DateTime.parse(stringDate);
  }

  @override
  String? toJson(DateTime? date) => date?.toIso8601String();
}
