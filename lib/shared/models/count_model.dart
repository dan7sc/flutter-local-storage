import 'dart:convert';

class CountModel {
  final int value;

  CountModel({required this.value});

  String toJson() => jsonEncode(toMap());

  static CountModel fromJson(String json) {
    return fromMap(jsonDecode(json));
  }

  Map<String, dynamic> toMap() => {"value": value};

  static CountModel fromMap(Map<String, dynamic> map) =>
      CountModel(value: map['value']);
}
