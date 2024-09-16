// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:rideshare_app/models/result_model.dart';

class HubInfoModel extends ResultModel {
  final int id;
  final String name;
  final num latitude;
  final num longitude;
  final String description;
  HubInfoModel({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.description,
  });

  HubInfoModel copyWith({
    int? id,
    String? name,
    num? latitude,
    num? longitude,
    String? description,
  }) {
    return HubInfoModel(
      id: id ?? this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'description': description,
    };
  }

  factory HubInfoModel.fromMap(Map<String, dynamic> map) {
    return HubInfoModel(
      id: map['id'] as int,
      name: map['name'] as String,
      latitude: map['latitude'] as num,
      longitude: map['longitude'] as num,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HubInfoModel.fromJson(String source) =>
      HubInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HubInfoModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, description: $description)';
  }

  @override
  bool operator ==(covariant HubInfoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        description.hashCode;
  }
}
