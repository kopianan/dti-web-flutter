import 'dart:convert';

class CountryNationality {
  const CountryNationality({
    required this.code,
    required this.name,
  });
  final String code;
  final String name;

  CountryNationality copyWith({
    String? code,
    String? name,
  }) {
    return CountryNationality(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
    };
  }

  factory CountryNationality.fromMap(Map<String, dynamic> map) {
    return CountryNationality(
      code: map['code'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryNationality.fromJson(String source) =>
      CountryNationality.fromMap(json.decode(source));

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CountryNationality &&
        other.code == code &&
        other.name == name;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
}
