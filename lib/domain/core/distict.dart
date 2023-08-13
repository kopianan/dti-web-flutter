import 'dart:convert';

class District {
  const District(
    this.districtCode,
    this.cityCode,
    this.proviceCode,
    this.name,
  );
  final int districtCode;
  final int cityCode;
  final int proviceCode;
  final String name;

  District copyWith({
    int? districtCode,
    int? cityCode,
    int? proviceCode,
    String? name,
  }) {
    return District(
      districtCode ?? this.districtCode,
      cityCode ?? this.cityCode,
      proviceCode ?? this.proviceCode,
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'districtCode': districtCode,
      'cityCode': cityCode,
      'proviceCode': proviceCode,
      'name': name,
    };
  }

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      map['districtCode']?.toInt() ?? 0,
      map['cityCode']?.toInt() ?? 0,
      map['proviceCode']?.toInt() ?? 0,
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory District.fromJson(String source) =>
      District.fromMap(json.decode(source));

  @override
  String toString() {
    return name;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is District &&
        other.districtCode == districtCode &&
        other.cityCode == cityCode &&
        other.proviceCode == proviceCode &&
        other.name == name;
  }

  @override
  int get hashCode {
    return districtCode.hashCode ^
        cityCode.hashCode ^
        proviceCode.hashCode ^
        name.hashCode;
  }
}
