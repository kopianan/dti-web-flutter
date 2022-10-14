import 'dart:convert';

class City {
  const City(
    this.cityCode,
    this.proviceCode,
    this.name,
  );
  final int cityCode;
  final int proviceCode;
  final String name;

  City copyWith({
    int? cityCode,
    int? proviceCode,
    String? name,
  }) {
    return City(
      cityCode ?? this.cityCode,
      proviceCode ?? this.proviceCode,
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cityCode': cityCode,
      'proviceCode': proviceCode,
      'name': name,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      map['cityCode']?.toInt() ?? 0,
      map['proviceCode']?.toInt() ?? 0,
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source));

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is City &&
        other.cityCode == cityCode &&
        other.proviceCode == proviceCode &&
        other.name == name;
  }

  @override
  int get hashCode => cityCode.hashCode ^ proviceCode.hashCode ^ name.hashCode;
}
