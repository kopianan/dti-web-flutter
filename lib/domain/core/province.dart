import 'dart:convert';

class Province {
  const Province(
    this.proviceCode,
    this.name,
  );
  final int proviceCode;
  final String name;

  Province copyWith({
    int? proviceCode,
    String? name,
  }) {
    return Province(
      proviceCode ?? this.proviceCode,
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'proviceCode': proviceCode,
      'name': name,
    };
  }

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      map['proviceCode']?.toInt() ?? 0,
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Province.fromJson(String source) =>
      Province.fromMap(json.decode(source));

  @override
  String toString() => name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Province &&
        other.proviceCode == proviceCode &&
        other.name == name;
  }

  @override
  int get hashCode => proviceCode.hashCode ^ name.hashCode;
}
