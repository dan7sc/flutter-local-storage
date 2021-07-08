import 'dart:convert';

class CountModel {
  final int value;

  CountModel({required this.value});

  String toJson() {
    return """
    {
      "value": $value
    }
    """;
  }

  static CountModel fromJson(String json) {
    final map = jsonDecode(json) as Map<String, dynamic>;

    return CountModel(value: map['value']);
  }
}
