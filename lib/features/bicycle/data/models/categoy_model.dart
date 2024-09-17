import 'dart:core';

import 'package:rideshare_app/features/bicycle/domain/entities/category.dart';

class CategoyModel extends Category {
  const CategoyModel({required super.name});

  factory CategoyModel.fromJson(Map<String, dynamic> json) {
    return CategoyModel(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
