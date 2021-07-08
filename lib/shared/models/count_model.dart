import 'dart:convert';

import 'dart:io';

class CountModel {
  final int value;

  CountModel({required this.value});

  CountModel copyWith({
    int? value,
  }) {
    return CountModel(
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {'value': value};
  }

  factory CountModel.fromMap(Map<String, dynamic> map) {
    return CountModel(
      value: map['value'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory CountModel.fromJson(String source) =>
      CountModel.fromMap(jsonDecode(source));

  @override
  String toString() => 'CountModel(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CountModel && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
